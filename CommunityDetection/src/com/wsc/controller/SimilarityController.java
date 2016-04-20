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
@RequestMapping("/similarity")
public class SimilarityController implements ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(SimilarityController.class);

    private IAlgorithmFlagOpt mAlgorithmFlagOpt;

    private ApplicationContext mApplicationContext;

    @Resource(name = "algorithmFlagOpt")
    public void setmAlgorithmFlagOpt(IAlgorithmFlagOpt mAlgorithmFlagOpt) {
        this.mAlgorithmFlagOpt = mAlgorithmFlagOpt;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        mApplicationContext = applicationContext;
    }

    @RequestMapping(value = "/distance-cos", method = RequestMethod.GET)
    public String gotoCosPage(Model model) {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-cos";
    }

    @RequestMapping(value = "/distance-euc", method = RequestMethod.GET)
    public String gotoEucPage(Model model) {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-euc";
    }

    @RequestMapping(value = "/distance-ma", method = RequestMethod.GET)
    public String gotoMaPage(Model model) {
        log.debug("Goto distance-cos Page");
        return "/similarity/distance-ma";
    }

    @RequestMapping(value = "/set_similarity", method = RequestMethod.GET)
    public
    @ResponseBody
    CDMessage setSimilarity(@RequestParam("title") String title, Model model, HttpSession httpSession) {
        log.debug("set similarity measure title : " + title);
        CDMessage msg = new CDMessage();

        Object ob = httpSession.getAttribute(SessionKeyCfg.FLAG);
        AlgorithmFlag flag;
        if (ob == null) {
            //flag = new AlgorithmFlag();
            flag = (AlgorithmFlag) mApplicationContext.getBean("algorithmFlag");
        } else {
            flag = (AlgorithmFlag) ob;
        }

        if (title.equals("cos")) {
            mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.S_COS_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());
            msg.setMsg("设置成功！");
            return msg;
        } else if (title.equals("euc")) {
            mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.S_EUC_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());
            msg.setMsg("设置成功！");
            return msg;
        } else if (title.equals("ma")) {
            mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.S_MA_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());
            msg.setMsg("设置成功！");
            return msg;
        } else {
            msg.setMsg("参数异常！");
            return msg;
        }
    }

}
