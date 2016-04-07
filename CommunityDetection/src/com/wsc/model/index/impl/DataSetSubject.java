package com.wsc.model.index.impl;

import com.wsc.model.dataset.IDataSet;
import com.wsc.model.index.Subject;

/**
 * Created by xiaowei on 2016/4/7.
 */
public class DataSetSubject extends Subject {

    private IDataSet mDataSet;

    public IDataSet getmDataSet() {
        return mDataSet;
    }

    public void setmDataSet(IDataSet mDataSet) {
        this.mDataSet = mDataSet;
    }

}
