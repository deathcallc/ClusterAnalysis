package com.wsc.controller;

import com.wsc.entity.AlgorithmFlag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Objects;

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

    @RequestMapping(value="/set_dataset", method= RequestMethod.GET)
    public String setDataset(@RequestParam("title")String title, Model model, HttpSession httpSession)
    {
        log.debug("Goto set dataset title : "+title);
        Object ob = httpSession.getAttribute("flag");
        AlgorithmFlag flag;
        if(ob == null) {
            flag = new AlgorithmFlag();
        }
        else {
            flag = (AlgorithmFlag)ob;
        }

        if(title.equals("sp500")){

        }
        else if(title.equals("dblp")){

        }
        else{

        }
        return "/dataset/dataset-sp500-intro";
    }

}
