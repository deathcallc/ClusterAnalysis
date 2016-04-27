package com.wsc.model.index.impl;

import com.wsc.model.dataset.IDataSet;
import com.wsc.model.index.CDSubject;
import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/7.
 */
@Component
public class DataSetSubject extends CDSubject {

    private IDataSet mDataSet;

    public IDataSet getmDataSet() {
        return mDataSet;
    }

    public void setmDataSet(IDataSet mDataSet) {
        this.mDataSet = mDataSet;
        this.notifyObservers();
    }

}
