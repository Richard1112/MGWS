package com.org.mgws.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.org.mgws.contants.CommonConstants;
import com.org.mgws.entity.TAssetCart;
import com.org.mgws.service.MainService;

@Controller
@RequestMapping("/assetInfo")
public class AssetInfoController extends BaseController {
    
	@Resource
	private MainService mainService;
    /**
     * 金融实验室
     * 
     * @param model
     * @return
     */
    @RequestMapping(value = "/init")
    public String init(Model model, HttpServletResponse response, HttpSession session) {
        try {
        	List<TAssetCart> assetCartList = mainService.getAllAssetCard();
        	model.addAttribute("assetCartList", assetCartList);
            return "assetinfo";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
