package com.wsc.entity;

/**
 * Created by xiaowei on 2016/4/7.
 */
public class AlgorithmFlag {

    public final static long DS_SP500_FLAG = 1 << 1;
    public final static long DS_DBLP_FLAG = 1 << 2;
    public final static long PP_LAPLACE_FLAG = 1 << 3;
    public final static long PP_KCORE_FLAG = 1 << 4;
    public final static long PP_LAPLACE_INVERSE_FLAG = 1 << 5;
    public final static long S_COS_FLAG = 1 << 6;
    public final static long S_EUC_FLAG = 1 << 7;
    public final static long S_MA_FLAG = 1 << 8;
    public final static long C_FAST_CLUSTER_FLAG = 1 << 9;
    public final static long C_SPECTRUL_CLUSTER_FLAG = 1 << 10;
    public final static long C_SSC_CLUSTER_FLAG = 1 << 11;

    public final static long DS_FLAG = DS_SP500_FLAG | DS_DBLP_FLAG;
    public final static long PP_FLAG = PP_LAPLACE_FLAG | PP_KCORE_FLAG | PP_LAPLACE_INVERSE_FLAG;
    public final static long S_FLAG = S_COS_FLAG | S_EUC_FLAG | S_MA_FLAG;
    public final static long C_FLAG = C_FAST_CLUSTER_FLAG | C_SPECTRUL_CLUSTER_FLAG | C_SSC_CLUSTER_FLAG;

    private long mFlag;

    public boolean hasFlag(long flag) {

        if (1 == (mFlag & flag))
            return true;
        else
            return false;
    }

    public void addFlag(long flag) {
        mFlag = mFlag | flag;
    }

    public void removeFlag(long flag) {
        mFlag = mFlag & (~flag);
    }



}
