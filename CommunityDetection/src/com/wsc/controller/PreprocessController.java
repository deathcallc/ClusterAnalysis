package com.wsc.controller;

import com.wsc.config.SessionKeyCfg;
import com.wsc.entity.AlgorithmFlag;
import com.wsc.entity.CDMessage;
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
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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

    @RequestMapping(value = "/set_preprocess", method = RequestMethod.GET)
    public @ResponseBody CDMessage setPreprocess(@RequestParam("title") String title, Model model, HttpSession httpSession) {
        log.debug("set preprocess title : " + title);
        CDMessage msg = (CDMessage) mApplicationContext.getBean("CDMessage");

        Object ob = httpSession.getAttribute(SessionKeyCfg.FLAG);
        AlgorithmFlag flag;
        if (ob == null) {
            //flag = new AlgorithmFlag();
            flag = (AlgorithmFlag) mApplicationContext.getBean("algorithmFlag");
        } else {
            flag = (AlgorithmFlag) ob;
        }

        if (title.equals("k-core")) {
            if(mAlgorithmFlagOpt.hasFlag(flag, AlgorithmFlag.PP_KCORE_FLAG)) {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.PP_KCORE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("取消设置！");
            }
            else {
                mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.PP_KCORE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("设置成功！");
            }
            return msg;
        } else if (title.equals("laplace")) {
            if(mAlgorithmFlagOpt.hasFlag(flag, AlgorithmFlag.PP_LAPLACE_FLAG)) {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.PP_LAPLACE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("取消设置！");
            }
            else {
                mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.PP_LAPLACE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("设置成功！");
            }
            return msg;
        } else if (title.equals("laplace-inverse")) {
            if(mAlgorithmFlagOpt.hasFlag(flag, AlgorithmFlag.PP_LAPLACE_INVERSE_FLAG)) {
                mAlgorithmFlagOpt.removeFlag(flag, AlgorithmFlag.PP_LAPLACE_INVERSE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("取消设置！");
            }
            else {
                mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.PP_LAPLACE_INVERSE_FLAG);
                httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
                log.debug("flag val : " + flag.getFlag());
                msg.setMsg("设置成功！");
            }
            return msg;
        } else {
            msg.setMsg("参数异常！");
            return msg;
        }
    }

}
