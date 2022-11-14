package com.bookshop01.info;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface InfoController {

    public ModelAndView companyIntro(HttpServletRequest request, HttpServletResponse response);
    public ModelAndView termsOfUse(HttpServletRequest request, HttpServletResponse response);
    public ModelAndView privacyStatement(HttpServletRequest request, HttpServletResponse response);

}
