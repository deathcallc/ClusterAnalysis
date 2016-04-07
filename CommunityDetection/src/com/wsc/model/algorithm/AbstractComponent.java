package com.wsc.model.algorithm;

import com.wsc.model.dataset.IDataSet;

/**
 * Created by xiaowei on 2016/4/7.
 */
public abstract class AbstractComponent {

    protected String description = "default";

    public String getDescription() {
        return description;
    }

    public abstract IDataSet doMethod();
}
