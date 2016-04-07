package com.wsc.model.algorithm;

import com.wsc.model.dataset.IDataSet;

/**
 * Created by xiaowei on 2016/4/7.
 */
public abstract class Decorator extends AbstractComponent{

    private AbstractComponent mPrev;

    public Decorator(AbstractComponent decor){
        mPrev = decor;
    }

}
