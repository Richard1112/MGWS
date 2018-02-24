package com.org.mgws.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.base.util.MessageUtils;
import com.org.mgws.contants.CommonConstants;
import com.org.mgws.entity.TOpenInfo;
import com.org.mgws.service.OpenInfoService;

@Controller
@RequestMapping("/openInfo")
public class OpenInfoController extends BaseController {

    @Resource
    private OpenInfoService openInfoService;

    /**
     * 信息公示
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletResponse response, HttpSession session) {
        try {
            // 检索所有的信息公示
            List<TOpenInfo> openInfoList = openInfoService.getAllTOpenInfo();
            model.addAttribute("openInfoList", openInfoList);
            model.addAttribute("saveOpenInfoPDFUrl", MessageUtils.getApplicationMessage("saveOpenInfoPDFUrl"));
            return "openInfo";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
