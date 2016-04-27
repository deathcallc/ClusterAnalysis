package com.wsc.model.index.impl.analysis;

import com.wsc.model.index.CDSubject;
import com.wsc.model.index.IObserver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * Created by lenovo on 2016/4/27.
 */
@Component
public class RandObserver implements IObserver{

    private static Logger log = LoggerFactory.getLogger(RandObserver.class);

    @Override
    public void update(CDSubject subject) {
        log.debug("RandObserver has been called!");
    }
}
