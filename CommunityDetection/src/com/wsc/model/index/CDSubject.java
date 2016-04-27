package com.wsc.model.index;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by xiaowei on 2016/4/7.
 */
public abstract class CDSubject {

    private List<IObserver> observers = new ArrayList<IObserver>();

    public void attach(IObserver ob) {
        observers.add(ob);
    }

    public void detach(IObserver ob) {
        observers.remove(ob);
    }

    protected void notifyObservers() {

        for(IObserver ob: observers)
        {
            ob.update(this);
        }

    }
}
