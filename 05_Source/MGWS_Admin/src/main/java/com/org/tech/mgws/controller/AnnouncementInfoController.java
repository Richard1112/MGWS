package com.org.tech.mgws.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.org.mgws.base.page.Pagination;
import com.org.mgws.base.page.PagingResult;
import com.org.mgws.base.shiro.bind.annotation.CurrentUser;
import com.org.mgws.base.util.CommonUtils;
import com.org.mgws.base.util.DateFormatUtils;
import com.org.mgws.base.util.MessageUtils;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.entity.TAdminLoginInfo;
import com.org.mgws.entity.TAnnouncementInfo;
import com.org.mgws.service.AnnouncementInfoService;

@Controller
public class AnnouncementInfoController extends BaseController {

    @Resource
    AnnouncementInfoService announcementInfoService;
    
    @RequestMapping(value = "/announcementInfoInit")
    public String init() {
        return "/announcementInfoList";
    }

    @RequestMapping(value = "/announcementInfoAddInit")
    public String addInit(Model model) {
        model.addAttribute("tAnnouncementInfo", new TAnnouncementInfo());
        model.addAttribute("saveAnnouncementInfoPDFUrl", MessageUtils.getApplicationMessage("saveAnnouncementInfoPDFUrl"));
        return "/announcementInfoEdit";
    }

    @RequestMapping(value = "/announcementInfo", method = RequestMethod.GET)
    @ResponseBody
    public PagingResult<Map<String, Object>> getAllInvestorSign(HttpServletRequest req, HttpServletResponse response)
            throws UnsupportedEncodingException {

        Pagination pagination = new Pagination();
        Map<Object, Object> param = new HashMap<Object, Object>();
        // 取得当前页数,注意这是jqgrid自身的参数
        String page = req.getParameter("page");
        // 取得每页显示行数，,注意这是jqgrid自身的参数
        String rows = req.getParameter("rows");
        pagination.setPage(Integer.parseInt(page));
        pagination.setSize(Integer.parseInt(rows));

        pagination.setParams(param);
        // 查询信息
        PagingResult<Map<String, Object>> pagingResult = announcementInfoService.queryByPage(pagination);
        
        return pagingResult;
    }

    @RequestMapping(value = "/announcementInfoEdit", method = RequestMethod.POST)
    public String save(HttpServletRequest req, @CurrentUser TAdminLoginInfo loginUser,
            @ModelAttribute TAnnouncementInfo tAnnouncementInfo, Model model) throws Exception {

        String distImgPath = MessageUtils.getApplicationMessage("DistAnnouncementInfoPath");
        boolean needUpdateFile = false;
        if (StringUtils.isEmpty(tAnnouncementInfo.getNo())) {
            tAnnouncementInfo.setReleaseDate(DateFormatUtils.getSystemTimeWidthFormat(DateFormatUtils.PATTEN_YMD_NO_SEPRATE));
            tAnnouncementInfo.setAdduserkey(loginUser.getAdminno());
            tAnnouncementInfo.setAddtimestamp(DateFormatUtils.getCurrentDate());
            tAnnouncementInfo.setUpdpgmid("AnnouncementInfoController");
            tAnnouncementInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
            tAnnouncementInfo.setUpduserkey(loginUser.getAdminno());
            announcementInfoService.insert(tAnnouncementInfo);
            
            needUpdateFile = true;
        }
        else {
            TAnnouncementInfo tAnnouncementInfoOrign = announcementInfoService.selectByPrimaryKey(Long.valueOf(tAnnouncementInfo.getNo()));
            // 先将先前不用的图片删除
            if (!tAnnouncementInfoOrign.getFileName().equals(tAnnouncementInfo.getFileName())) {
                CommonUtils.deleteFile(distImgPath  + tAnnouncementInfoOrign.getFileName());
                needUpdateFile = true;
            }
            tAnnouncementInfo.setReleaseDate(DateFormatUtils.getSystemTimeWidthFormat(DateFormatUtils.PATTEN_YMD_NO_SEPRATE));
            tAnnouncementInfo.setUpdpgmid("AnnouncementInfoController");
            tAnnouncementInfo.setUpdtimestamp(DateFormatUtils.getCurrentDate());
            tAnnouncementInfo.setUpduserkey(loginUser.getAdminno());
            announcementInfoService.updateByPrimaryKey(tAnnouncementInfo);
        }
        
        if (needUpdateFile) {
            // 更新数据库后将数据
            String orginPath = System.getProperty("java.io.tmpdir") + CommonConstants.PATH_SPLIT
                    + CommonConstants.mgws_ADMIN_PROJECT;
            String destPath = distImgPath;
            File fileDictory = new File(destPath);
            if (!fileDictory.exists()) {
                fileDictory.mkdirs();
            }
            // 复制商品缩略图
            CommonUtils.copyFile(orginPath + CommonConstants.PATH_SPLIT + tAnnouncementInfo.getFileName(), destPath
                    + CommonConstants.PATH_SPLIT + tAnnouncementInfo.getFileName());
        }
        

        model.addAttribute("init", 0);
        return "announcementInfoList";
    }

    @RequestMapping(value = "/announcementInfoDelete", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> delete(HttpServletRequest req) {
        String no = req.getParameter("no");
        Map<String, Object> map = new HashMap<String, Object>();
        if (no != null && !"".equals(no)) {
            TAnnouncementInfo tAnnouncementInfo = announcementInfoService.selectByPrimaryKey(Long.parseLong(no));
            announcementInfoService.deleteByPrimaryKey(tAnnouncementInfo);
            
            String distImgPath = MessageUtils.getApplicationMessage("DistAnnouncementInfoPath");
            CommonUtils.deleteFile(distImgPath  + tAnnouncementInfo.getFileName());
            map.put("isSuccess", true);
        }
        return map;
    }

    @RequestMapping(value = "/announcementInfo/{no}", method = RequestMethod.GET)
    public String updateInit(@PathVariable String no, Model model) {
        if (no != null && !"".equals(no)) {
            TAnnouncementInfo tAnnouncementInfo = announcementInfoService.selectByPrimaryKey(Long.parseLong(no));
            model.addAttribute("tAnnouncementInfo", tAnnouncementInfo);
        }
        model.addAttribute("saveAnnouncementInfoPDFUrl", MessageUtils.getApplicationMessage("saveAnnouncementInfoPDFUrl"));
        return "/announcementInfoEdit";
    }
    
    
    /**
     * 删除PDF信息
     * 
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/announcementInfoDeleteFile", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> announcementInfoDeleteFile(HttpServletRequest request, HttpSession session, String fileId,
            String announcementInfoNo) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            mapReturn.put("fileId", fileId);
            mapReturn.put("isException", false);
            return mapReturn;
        }
        catch (Exception e) {
            mapReturn.put("isException", true);
            return mapReturn;
        }
    }
    
    /**
     * 
     * @param request
     * @param response
     * @param file
     * @param goodId
     * @return
     */
    @RequestMapping(value = "/announcementInfoUpdateFile", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> investorSignUpdateFile(HttpServletRequest request, HttpServletResponse response,
            @RequestParam MultipartFile file, String investorSignNo) {
        Map<String, Object> mapReturn = new HashMap<String, Object>();
        try {
            //获取文件到map容器中  
            String filename = file.getOriginalFilename();
            String fileType = filename.substring(filename.lastIndexOf(CommonConstants.FILE_SPLIT));
            String uid = "MGWS" + "_" + DateFormatUtils.getNowTimeFormat(DateFormatUtils.PATTEN_YMD_HH_MM_SS_SSS_SEPRATE) + random.nextInt(10);
            String tempUrl = System.getProperty("java.io.tmpdir");
            String fileFullPath = tempUrl + CommonConstants.PATH_SPLIT + CommonConstants.mgws_ADMIN_PROJECT
                    + CommonConstants.PATH_SPLIT + uid + fileType;
            File destDirectory = new File(tempUrl + CommonConstants.PATH_SPLIT + CommonConstants.mgws_ADMIN_PROJECT);
            if (!destDirectory.exists()) {
                destDirectory.mkdirs();
            }
            file.transferTo(new File(fileFullPath));
            mapReturn.put("fileId", uid + fileType);
            return mapReturn;
        }
        catch (Exception e) {
            mapReturn.put("isException", true);
            return null;
        }
        
    }
}
