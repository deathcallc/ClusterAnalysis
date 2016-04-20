package com.wsc.model.algorithm.impl.preprocess;

import com.wsc.model.algorithm.AbstractComponent;
import com.wsc.model.algorithm.Decorator;
import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/20.
 */
@Component
public class LaplaceInversePreprocess extends Decorator {

    public LaplaceInversePreprocess(AbstractComponent decor) {
        super(decor);
        this.description = "LaplaceInversePreprocess";
    }
}
