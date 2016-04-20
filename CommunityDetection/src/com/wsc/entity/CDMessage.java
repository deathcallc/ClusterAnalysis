package com.wsc.entity;

import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/18.
 */
@Component
public class CDMessage {

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    private String msg;

}
