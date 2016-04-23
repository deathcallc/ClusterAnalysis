package com.wsc.controller;

import com.wsc.config.SessionKeyCfg;
import com.wsc.entity.AlgorithmFlag;
import com.wsc.entity.CDMessage;
import com.wsc.model.algorithm.IAlgorithmFlagOpt;
import com.wsc.service.IAlgorithmService;
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
import org.springframework.web.bind.annotation.ResponseBody;

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

    private IAlgorithmService mAlgorithmService;

    @Resource(name="algorithmFlagOpt")
    public void setmAlgorithmFlagOpt(IAlgorithmFlagOpt mAlgorithmFlagOpt) {
        this.mAlgorithmFlagOpt = mAlgorithmFlagOpt;
    }

    @Resource(name="algorithmService")
    public void setmAlgorithmService(IAlgorithmService mAlgorithmService) {
        this.mAlgorithmService = mAlgorithmService;
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

    @RequestMapping(value = "/set_cluster", method = RequestMethod.GET)
    public @ResponseBody
    CDMessage setCluster(@RequestParam("title") String title, Model model, HttpSession httpSession) {

        log.debug("set cluster title : "+title);
        CDMessage msg = (CDMessage) mApplicationContext.getBean("CDMessage");

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
            mAlgorithmFlagOpt.addClusterFlag(flag, AlgorithmFlag.C_FAST_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());

            if(mAlgorithmService.validateFlag(flag)) {
                msg.setMsg("算法开始！");
                mAlgorithmService.genAlgorithmMethod(flag);
                return msg;
            } else {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.C_FAST_CLUSTER_FLAG);
                msg.setMsg("算法参数错误或者不完全！");
                log.debug("flag is invalid");
                return msg;
            }

        }
        else if(title.equals("spectrul-cluster")){
            mAlgorithmFlagOpt.addClusterFlag(flag, AlgorithmFlag.C_SPECTRUL_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());

            if(mAlgorithmService.validateFlag(flag)) {
                msg.setMsg("算法开始！");
                mAlgorithmService.genAlgorithmMethod(flag);
                return msg;
            } else {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.C_SPECTRUL_CLUSTER_FLAG);
                msg.setMsg("算法参数错误或者不完全！");
                log.debug("flag is invalid");
                return msg;
            }
        }
        else if(title.equals("ssc-cluster")){
            mAlgorithmFlagOpt.addClusterFlag(flag, AlgorithmFlag.C_SSC_CLUSTER_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());

            if(mAlgorithmService.validateFlag(flag)) {
                msg.setMsg("算法开始！");
                mAlgorithmService.genAlgorithmMethod(flag);
                return msg;
            } else {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.C_SSC_CLUSTER_FLAG);
                msg.setMsg("算法参数错误或者不完全！");
                log.debug("flag is invalid");
                return msg;
            }
        }
        else{
            msg.setMsg("参数错误！");
            return msg;
        }
    }



}
