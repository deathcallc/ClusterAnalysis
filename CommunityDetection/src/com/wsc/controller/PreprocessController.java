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
@RequestMapping("/preprocess")
public class PreprocessController implements ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(PreprocessController.class);

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
