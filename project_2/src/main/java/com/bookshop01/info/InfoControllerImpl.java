package com.bookshop01.info;

import com.bookshop01.common.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller("infoController")
@RequestMapping(value="/info")
public class InfoControllerImpl extends BaseController implements InfoController {

    // 회사소개
    @Override
    @RequestMapping(value="/companyIntro.do" ,method = RequestMethod.GET)
    public ModelAndView companyIntro(HttpServletRequest request, HttpServletResponse response) {
        String viewName = (String)request.getAttribute("viewName");
        ModelAndView mav = new ModelAndView(viewName);

        return mav;
    }

    // 이용약관
    @Override
    @RequestMapping(value="/termOfUse.do" ,method = RequestMethod.GET)
    public ModelAndView termsOfUse(HttpServletRequest request, HttpServletResponse response) {
        String viewName = (String)request.getAttribute("viewName");
        ModelAndView mav = new ModelAndView(viewName);

        return mav;
    }

    // 개인정보취급방침
    @Override
    @RequestMapping(value="/privacyStatement.do" ,method = RequestMethod.GET)
    public ModelAndView privacyStatement(HttpServletRequest request, HttpServletResponse response) {
        String viewName=(String)request.getAttribute("viewName");
        ModelAndView mav = new ModelAndView(viewName);

        return mav;
    }

}
