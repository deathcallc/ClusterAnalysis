package com.wsc.entity;

import org.springframework.stereotype.Component;

/**
 * Created by xiaowei on 2016/4/7.
 */
@Component
public class AlgorithmFlag {

    public final static long DS_SP500_FLAG = 1 << 0;
    public final static long DS_DBLP_FLAG = 1 << 1;
    public final static long PP_LAPLACE_FLAG = 1 << 2;
    public final static long PP_KCORE_FLAG = 1 << 3;
    public final static long PP_LAPLACE_INVERSE_FLAG = 1 << 4;
    public final static long S_COS_FLAG = 1 << 5;
    public final static long S_EUC_FLAG = 1 << 6;
    public final static long S_MA_FLAG = 1 << 7;
    public final static long C_FAST_CLUSTER_FLAG = 1 << 8;
    public final static long C_SPECTRUL_CLUSTER_FLAG = 1 << 9;
    public final static long C_SSC_CLUSTER_FLAG = 1 << 10;

    public final static long DS_FLAG = DS_SP500_FLAG | DS_DBLP_FLAG;
    public final static long PP_FLAG = PP_LAPLACE_FLAG | PP_KCORE_FLAG | PP_LAPLACE_INVERSE_FLAG;
    public final static long S_FLAG = S_COS_FLAG | S_EUC_FLAG | S_MA_FLAG;
    public final static long C_FLAG = C_FAST_CLUSTER_FLAG | C_SPECTRUL_CLUSTER_FLAG | C_SSC_CLUSTER_FLAG;

    private long mFlag;

    public boolean hasFlag(long flag) {

        if ((mFlag & flag) != 0)
            return true;
        else
            return false;
    }

    public boolean hasOneBits(long flag){
        return hasNBits(flag, 1);
    }

    public boolean notHasBits(long flag){
        return hasNBits(flag, 0);
    }

    /**
     * 返回mFlag与flag所有位上值相同的个数
     * @param flag
     * @return
     */
    public int getBits(long flag){
        long f = mFlag & flag;
        int count = 0;
        while(f > 0){

            if((f&1) == 1)
            {
                count++;
            }

            f = f >> 1;
        }
        return count;
    }

    /**
     * 标志mFlag与flag位数相同的个数如果为n则返回true
     * @param flag
     * @param n
     * @return
     */
    public boolean hasNBits(long flag, int n) {

        int count = getBits(flag);

        if(count == n)
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

    public long getFlag() { return mFlag; }



}
