package com.wsc.service;

import com.wsc.entity.AlgorithmFlag;
import com.wsc.model.algorithm.AbstractComponent;

/**
 * Created by xiaowei on 2016/4/20.
 */
public interface IAlgorithmService {

    public boolean validateFlag(AlgorithmFlag flag);

    public AbstractComponent genAlgorithmMethod(AlgorithmFlag flag);

}
