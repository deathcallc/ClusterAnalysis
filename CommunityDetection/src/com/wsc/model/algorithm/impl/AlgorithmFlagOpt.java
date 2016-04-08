package com.wsc.model.algorithm.impl;

import com.wsc.entity.AlgorithmFlag;
import com.wsc.model.algorithm.IAlgorithmFlagOpt;

/**
 * Created by xiaowei on 2016/4/8.
 */
public class AlgorithmFlagOpt implements IAlgorithmFlagOpt {

    @Override
    public void addClusterFlag(AlgorithmFlag aFlag, long flag) {
        aFlag.removeFlag(AlgorithmFlag.C_FLAG);
        aFlag.addFlag(flag);
    }

    @Override
    public void addDataSetFlag(AlgorithmFlag aFlag, long flag) {
        aFlag.removeFlag(AlgorithmFlag.DS_FLAG);
        aFlag.addFlag(flag);
    }

    @Override
    public void addPreprocessFlag(AlgorithmFlag aFlag, long flag) {
        aFlag.addFlag(flag);
    }

    @Override
    public void addSimilarityFlag(AlgorithmFlag aFlag, long flag) {
        aFlag.removeFlag(AlgorithmFlag.S_FLAG);
        aFlag.addFlag(flag);
    }
}
