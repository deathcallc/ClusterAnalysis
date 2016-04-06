package com.wsc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 * Created by xiaowei on 2016/4/5.
 */
@Controller
@RequestMapping("/dataset")
public class DataSetController {

    private static Logger log = LoggerFactory.getLogger(DataSetController.class);

    @RequestMapping(value="/dblp", method= RequestMethod.GET)
    public String gotoDBLPPage(Model model)
    {
        log.debug("Goto DBLP Page");
        return "/dataset/dataset-dblp-intro";
    }

    @RequestMapping(value="/sp500", method= RequestMethod.GET)
    public String gotoSP500Page(Model model)
    {
        log.debug("Goto SP500 page");
        return "/dataset/dataset-sp500-intro";
    }

}
