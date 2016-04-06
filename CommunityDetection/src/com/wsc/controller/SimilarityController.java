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
@RequestMapping("/similarity")
public class SimilarityController {

    private static Logger log = LoggerFactory.getLogger(SimilarityController.class);

    @RequestMapping(value="/distance-cos", method= RequestMethod.GET)
    public String gotoCosPage(Model model)
    {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-cos";
    }

    @RequestMapping(value="/distance-euc", method= RequestMethod.GET)
    public String gotoEucPage(Model model)
    {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-euc";
    }

    @RequestMapping(value="/distance-ma", method= RequestMethod.GET)
    public String gotoMaPage(Model model)
    {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-ma";
    }


}
