package com.wsc.controller;

import com.wsc.model.algorithm.IAlgorithmFlagOpt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by xiaowei on 2016/4/6.
 */

@Controller
@RequestMapping("/similarity")
public class SimilarityController implements ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(SimilarityController.class);

    private IAlgorithmFlagOpt mAlgorithmFlagOpt;

    private ApplicationContext mApplicationContext;

    @Resource(name="algorithmFlagOpt")
    public void setmAlgorithmFlagOpt(IAlgorithmFlagOpt mAlgorithmFlagOpt) {
        this.mAlgorithmFlagOpt = mAlgorithmFlagOpt;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        mApplicationContext = applicationContext;
    }

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
