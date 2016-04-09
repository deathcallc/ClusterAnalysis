package com.wsc.controller;

import com.wsc.config.SessionKeyCfg;
import com.wsc.entity.AlgorithmFlag;
import com.wsc.model.algorithm.IAlgorithmFlagOpt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Objects;

/**
 * Created by xiaowei on 2016/4/5.
 */
@Controller
@RequestMapping("/dataset")
public class DataSetController {

    private static Logger log = LoggerFactory.getLogger(DataSetController.class);

    private IAlgorithmFlagOpt mAlgorithmFlagOpt;

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

    @RequestMapping(value="/set_dataset", method= RequestMethod.GET)
    public String setDataset(@RequestParam("title")String title, Model model, HttpSession httpSession)
    {
        log.debug("set dataset title : "+title);

//        WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();
//        service=(LogInjectionSaf)webApplicationContextgetBean("testA");

        Object ob = httpSession.getAttribute(SessionKeyCfg.FLAG);
        AlgorithmFlag flag;
        if(ob == null) {
            flag = new AlgorithmFlag();
        }
        else {
            flag = (AlgorithmFlag)ob;
        }

        if(title.equals("sp500")){
            mAlgorithmFlagOpt.addDataSetFlag(flag, AlgorithmFlag.DS_SP500_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : " + flag.getFlag());
            return "/dataset/dataset-sp500-intro";
        }
        else if(title.equals("dblp")){
            mAlgorithmFlagOpt.addDataSetFlag(flag ,AlgorithmFlag.DS_DBLP_FLAG);
            httpSession.setAttribute(SessionKeyCfg.FLAG, flag);
            log.debug("flag val : "+flag.getFlag());
            return "/dataset/dataset-dblp-intro";
        }
        else{
            return "/index.do";
        }
    }

    @Resource(name="algorithmFlagOpt")
    public void setmAlgorithmFlagOpt(IAlgorithmFlagOpt mAlgorithmFlagOpt) {
        this.mAlgorithmFlagOpt = mAlgorithmFlagOpt;
    }

}
