package com.wsc.model.algorithm.impl.dataset;

import com.wsc.model.algorithm.impl.DataSetComponent;
import com.wsc.model.dataset.IDataSet;
import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/20.
 */
@Component
public class Sp500Dataset extends DataSetComponent {

    public Sp500Dataset(){
        this.description = "Sp500Dataset";
    }

    public boolean doMethod(IDataSet dateSet){
        return true;
    }
}
