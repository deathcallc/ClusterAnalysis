package com.wsc.model.algorithm.impl.similarity;

import com.wsc.model.algorithm.AbstractComponent;
import com.wsc.model.algorithm.Decorator;
import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/20.
 */
@Component
public class CosDistanceMeasure extends Decorator {

    public CosDistanceMeasure(AbstractComponent decor) {
        super(decor);
        this.description = "CosDistanceMeasure";
    }

    public CosDistanceMeasure() {
        this.description = "CosDistanceMeasure";
    }
}
