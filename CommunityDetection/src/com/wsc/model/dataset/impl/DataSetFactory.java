package com.wsc.model.dataset.impl;

import com.wsc.model.dataset.IDataSet;

/**
 * Created by xiaowei on 2016/4/7.
 */
public class DataSetFactory {

    private static volatile DataSetFactory instance;
    public static DataSetFactory getInstance() {
        if (instance == null) {
            synchronized(DataSetFactory.class){
                if (instance==null) {
                    instance = new DataSetFactory();
                }
            }
        }
        return instance;
    }

    public IDataSet createDataSet(String name){
/*        Class c = Class.forName(name);
        DataSetProduct oa =
                (DataSetProduct)c.newInstance();*/
        return null;
    }
}
