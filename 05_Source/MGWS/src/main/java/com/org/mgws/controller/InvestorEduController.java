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
import com.org.mgws.entity.TInvestorEdu;
import com.org.mgws.service.InvestorEduService;

@Controller
@RequestMapping("/investorEdu")
public class InvestorEduController extends BaseController {

    @Resource
    private InvestorEduService investorEduService;

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
            List<TInvestorEdu> investorEduList = investorEduService.getAllTInvestorEdu();
            model.addAttribute("investorEduList", investorEduList);
            model.addAttribute("saveInvestorEduPDFUrl", MessageUtils.getApplicationMessage("saveInvestorEduPDFUrl"));
            return "investorEdu";
        }
        catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
            return CommonConstants.ERROR_PAGE;
        }
    }
}
