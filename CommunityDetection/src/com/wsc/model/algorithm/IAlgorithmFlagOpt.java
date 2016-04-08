package com.wsc.model.algorithm;

import com.wsc.entity.AlgorithmFlag;

/**
 * Created by xiaowei on 2016/4/8.
 */
public interface IAlgorithmFlagOpt {

    public void addClusterFlag(AlgorithmFlag aFlag, long flag);

    public void addDataSetFlag(AlgorithmFlag aFlag, long flag);

    public void addPreprocessFlag(AlgorithmFlag aFlag, long flag);

    public void addSimilarityFlag(AlgorithmFlag aFlag, long flag);

}
