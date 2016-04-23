package com.wsc.service.impl;

import com.wsc.entity.AlgorithmFlag;
import com.wsc.model.algorithm.AbstractComponent;
import com.wsc.model.algorithm.Decorator;
import com.wsc.model.algorithm.IAlgorithmFlagOpt;
import com.wsc.model.algorithm.impl.DataSetComponent;
import com.wsc.model.algorithm.impl.dataset.DblpDataset;
import com.wsc.model.algorithm.impl.dataset.Sp500Dataset;
import com.wsc.service.IAlgorithmService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by xiaowei on 2016/4/7.
 */
@Component
public class AlgorithmService implements IAlgorithmService, ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(AlgorithmService.class);

    private ApplicationContext mApplicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        mApplicationContext = applicationContext;
    }

    @Override
    public AbstractComponent genAlgorithmMethod(AlgorithmFlag flag){

    /*    if(validateFlag(flag)){
            log.debug("flag is invalid");
            return null;
        }*/

        DataSetComponent dataset = genDataset(flag);
        AbstractComponent algorithm = genPreprocessMethod(flag, dataset);
        algorithm = genSimilarity(flag, algorithm);
        algorithm = genCluster(flag, algorithm);

        log.debug("The algorithm consist of : "+algorithm.getDescription());

        return algorithm;
    }

    private DataSetComponent genDataset(AlgorithmFlag flag){
        if(flag.hasFlag(AlgorithmFlag.DS_SP500_FLAG))
        {
            return (Sp500Dataset)mApplicationContext.getBean("sp500Dataset");
        }
        else if(flag.hasFlag(AlgorithmFlag.DS_DBLP_FLAG))
        {
            return (DblpDataset)mApplicationContext.getBean("dblpDataset");
        }
        else
        {
            return null;
        }
    }

    private AbstractComponent genPreprocessMethod(AlgorithmFlag flag, AbstractComponent dataSet){

        Decorator decorator = null;
        Decorator temp = null;

        if(flag.hasFlag(AlgorithmFlag.PP_KCORE_FLAG))
        {
            decorator = (Decorator) mApplicationContext.getBean("kcorePreprocess");
            decorator.setmPrev(dataSet);
        }

        if(flag.hasFlag(AlgorithmFlag.PP_LAPLACE_FLAG))
        {
            if(decorator == null) {
                decorator = (Decorator) mApplicationContext.getBean("laplacePreprocess");
                decorator.setmPrev(dataSet);
            } else {
                temp = (Decorator) mApplicationContext.getBean("laplacePreprocess");
                temp.setmPrev(decorator);
                decorator = temp;
            }
        }

        if(flag.hasFlag(AlgorithmFlag.PP_LAPLACE_INVERSE_FLAG))
        {
            if(decorator == null) {
                decorator = (Decorator) mApplicationContext.getBean("laplaceInversePreprocess");
                decorator.setmPrev(dataSet);
            } else {
                temp = (Decorator) mApplicationContext.getBean("laplaceInversePreprocess");
                temp.setmPrev(decorator);
                decorator = temp;
            }
        }

        if(decorator != null)
            return decorator;
        else
            return dataSet;
    }

    private AbstractComponent genSimilarity(AlgorithmFlag flag, AbstractComponent decorator){

        Decorator temp = null;

        if(flag.hasFlag(AlgorithmFlag.S_COS_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("cosDistanceMeasure");
            temp.setmPrev(decorator);
            return temp;
        } else if(flag.hasFlag(AlgorithmFlag.S_MA_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("maDistanceMeasure");
            temp.setmPrev(decorator);
            return temp;
        } else if(flag.hasFlag(AlgorithmFlag.S_EUC_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("eucDistanceMeasure");
            temp.setmPrev(decorator);
            return temp;
        } else {
            return decorator;
        }
    }

    private AbstractComponent genCluster(AlgorithmFlag flag, AbstractComponent decorator){

        Decorator temp = null;

        if(flag.hasFlag(AlgorithmFlag.C_SSC_CLUSTER_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("sscCluster");
            temp.setmPrev(decorator);
            return temp;
        } else if(flag.hasFlag(AlgorithmFlag.C_SPECTRUL_CLUSTER_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("spectrulCluster");
            temp.setmPrev(decorator);
            return temp;
        } else if(flag.hasFlag(AlgorithmFlag.C_FAST_CLUSTER_FLAG)) {
            temp = (Decorator)mApplicationContext.getBean("fastCluster");
            temp.setmPrev(decorator);
            return temp;
        } else {
            return decorator;
        }
    }

    @Override
    public boolean validateFlag(AlgorithmFlag flag) {
        if(!flag.hasOneBits(AlgorithmFlag.DS_FLAG))
            return false;
//        if(!flag.hasFlag(AlgorithmFlag.PP_FLAG))
//            return false;
        if(!flag.hasOneBits(AlgorithmFlag.S_FLAG))
            return false;
        if(!flag.hasOneBits(AlgorithmFlag.C_FLAG))
            return false;
        return true;
    }
}
