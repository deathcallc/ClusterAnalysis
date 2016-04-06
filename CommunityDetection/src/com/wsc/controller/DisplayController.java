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
@RequestMapping("/display")
public class DisplayController {

    private static Logger log = LoggerFactory.getLogger(ClusterController.class);

    @RequestMapping(value="/index-list", method= RequestMethod.GET)
    public String gotoIndexListPage(Model model)
    {
        log.debug("Goto index-list Page");
        return "/display/index-list";
    }

    @RequestMapping(value="/partion-list", method= RequestMethod.GET)
    public String gotoPartionListPage(Model model)
    {
        log.debug("Goto partion-list Page");
        return "/display/partion-list";
    }

    @RequestMapping(value="/visual-list", method= RequestMethod.GET)
    public String gotoVisualPage(Model model)
    {
        log.debug("Goto visual Page");
        return "/display/visual";
    }
}
