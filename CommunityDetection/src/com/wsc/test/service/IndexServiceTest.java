package com.wsc.test.service;

import com.wsc.service.IIndexService;
import com.wsc.service.impl.IndexService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;


/**
 * Created by lenovo on 2016/4/28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:dispatcher-servlet.xml"})
public class IndexServiceTest {

    private IIndexService mIndexService;

    @Resource(name="indexService")
    public void setmIndexService(IIndexService mIndexService) {
        this.mIndexService = mIndexService;
    }

    @Test
    public void initIndexService() {
        mIndexService.calcIndex(null);
    }



}
