package com.wsc.service.impl;

import com.wsc.entity.AlgorithmFlag;
import com.wsc.model.dataset.IDataSet;
import com.wsc.model.index.IObserver;
import com.wsc.model.index.impl.DataSetSubject;
import com.wsc.service.IIndexService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by lenovo on 2016/4/27.
 */
@Component
public class IndexService implements IIndexService, ApplicationContextAware {

    private static Logger log = LoggerFactory.getLogger(IndexService.class);

    private DataSetSubject mSubject;

    private ApplicationContext mApplicationContext;

    @Resource(name="dataSetSubject")
    public void setmSubject(DataSetSubject mSubject) {
        this.mSubject = mSubject;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        mApplicationContext = applicationContext;
        init();
        log.debug("IndexService has been init");
    }

    public IndexService(){

    }

    public void init() {
        IObserver weightedF1 = (IObserver)mApplicationContext.getBean("weightedF1Observer");
        IObserver rand = (IObserver)mApplicationContext.getBean("randObserver");
        IObserver jaccard = (IObserver)mApplicationContext.getBean("jaccardObserver");
        IObserver adjustedRand = (IObserver)mApplicationContext.getBean("adjustedRandObserver");

        mSubject.attach(weightedF1);
        mSubject.attach(rand);
        mSubject.attach(jaccard);
        mSubject.attach(adjustedRand);
    }

    @Override
    public void calcIndex(IDataSet mDataSet){
        mSubject.setmDataSet(mDataSet);
    }
}
