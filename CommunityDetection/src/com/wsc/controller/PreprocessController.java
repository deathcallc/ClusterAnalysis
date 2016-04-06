package com.wsc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by xiaowei on 2016/4/6.
 */
@Controller
@RequestMapping("/preprocess")
public class PreprocessController {

    private static Logger log = LoggerFactory.getLogger(PreprocessController.class);

    @RequestMapping(value="/k-core", method= RequestMethod.GET)
    public String gotoKcorePage(Model model)
    {
        log.debug("Goto k-core page");
        return "/preprocess/k-core";
    }

    @RequestMapping(value="/laplace", method= RequestMethod.GET)
    public String gotoLaplacePage(Model model)
    {
        log.debug("Goto laplace page");
        return "/preprocess/laplace";
    }

    @RequestMapping(value="/laplace-inverse", method= RequestMethod.GET)
    public String gotoLaplaceInversePage(Model model)
    {
        log.debug("Goto laplace-inverse page");
        return "/preprocess/laplace-inverse";
    }

}
