package com.wsc.model.algorithm.impl.cluster;

import com.wsc.model.algorithm.AbstractComponent;
import com.wsc.model.algorithm.Decorator;
import com.wsc.model.dataset.IDataSet;
import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/20.
 */
@Component
public class SpectrulCluster extends Decorator {

    public SpectrulCluster(AbstractComponent decor) {
        super(decor);
        this.description = "SpectrulCluster";
    }
}
