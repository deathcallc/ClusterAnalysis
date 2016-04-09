package com.wsc.controller;

import com.wsc.config.SessionKeyCfg;
import com.wsc.entity.AlgorithmFlag;
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
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by xiaowei on 2016/4/6.
 */

@Controller
@RequestMapping("/cluster")
public class ClusterController implements ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(ClusterController.class);

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

    @RequestMapping(value="/set_cluster", method= RequestMethod.GET)
    public String setDataset(@RequestParam("title")String title, Model model, HttpSession httpSession)
    {
        log.debug("set cluster title : "+title);

        Object ob = httpSession.getAttribute(SessionKeyCfg.FLAG);
        AlgorithmFlag flag;
        if(ob == null) {
            //flag = new AlgorithmFlag();
            flag = (AlgorithmFlag)mApplicationContext.getBean("algorithmFlag");
        }
        else {
            flag = (AlgorithmFlag)ob;
        }

        if(title.equals("fast-cluster")){
            mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.C_FAST_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());
            return "/cluster/fast-cluster";
        }
        else if(title.equals("spectrul-cluster")){
            mAlgorithmFlagOpt.addDataSetFlag(flag ,AlgorithmFlag.C_SPECTRUL_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : "+flag.getFlag());
            return "/cluster/spectrul-cluster";
        }
        else if(title.equals("ssc-cluster")){
            mAlgorithmFlagOpt.addDataSetFlag(flag ,AlgorithmFlag.C_SSC_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : "+flag.getFlag());
            return "/cluster/ssc-cluster";
        }
        else{
            return "/index.do";
        }
    }

}
