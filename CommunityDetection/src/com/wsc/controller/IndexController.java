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
@RequestMapping("/")
public class IndexController {

    private static Logger log = LoggerFactory.getLogger(PreprocessController.class);

    @RequestMapping(value="/index", method= RequestMethod.GET)
    public String gotoKcorePage(Model model)
    {
        log.debug("Goto index page");
        return "/welcome";
    }
}
