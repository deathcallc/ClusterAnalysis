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
@RequestMapping("/cluster")
public class ClusterController {

    private static Logger log = LoggerFactory.getLogger(ClusterController.class);

    @RequestMapping(value="/fast-cluster", method= RequestMethod.GET)
    public String gotoFastClusterPage(Model model)
    {
        log.debug("Goto fast-cluster Page");
        return "/cluster/fast-cluster";
    }

    @RequestMapping(value="/spectrul-cluster", method= RequestMethod.GET)
    public String gotoSpectrulClusterPage(Model model)
    {
        log.debug("Goto spectrul-cluster Page");
        return "/cluster/spectrul-cluster";
    }

    @RequestMapping(value="/ssc-cluster", method= RequestMethod.GET)
    public String gotoSscClusterPage(Model model)
    {
        log.debug("Goto ssc-cluster Page");
        return "/cluster/ssc-cluster";
    }
}
