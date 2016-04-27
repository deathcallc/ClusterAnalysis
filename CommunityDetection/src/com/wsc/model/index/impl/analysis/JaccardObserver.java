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
public class JaccardObserver implements IObserver{

    private static Logger log = LoggerFactory.getLogger(JaccardObserver.class);

    @Override
    public void update(CDSubject subject) {
        log.debug("JaccardObserver has been called!");
    }
}
