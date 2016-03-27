<%--
  Created by IntelliJ IDEA.
  User: xiaowei
  Date: 2016/2/12
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
  <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i> 数据采集<i class="fa fa-collapse"></i></a></li>
  <li><ul class="dashboard-menu nav nav-list collapse in">
    <li><a href="cd-dataset-sp500-intro.html"><span class="fa fa-caret-right"></span> 标普500数据集</a></li>
    <li><a href="cd-dataset-dblp-intro.html"><span class="fa fa-caret-right"></span> DBLP数据集</a></li>
  </ul></li>

  <li><a href="#" data-target=".preprocessing-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i>数据预处理<i class="fa fa-collapse"></i></a></li>
  <li><ul class="preprocessing-menu nav nav-list collapse">
    <li ><a href="cd-k-core.html"><span class="fa fa-caret-right"></span> k核分解</a></li>
    <li ><a href="cd-laplace.html"><span class="fa fa-caret-right"></span> 获取拉普拉斯矩阵</a></li>
    <li ><a href="cd-laplace-inverse.html"><span class="fa fa-caret-right"></span> 获取拉普拉斯伪逆</a></li>
  </ul></li>

  <li><a href="#" data-target=".similarity-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-briefcase"></i>相似度计算<i class="fa fa-collapse"></i></a></li>
  <li><ul class="similarity-menu nav nav-list collapse">
    <li ><a href="cd-distance-euc.html"><span class="fa fa-caret-right"></span> 欧氏距离</a></li>
    <li ><a href="cd-distance-ma.html"><span class="fa fa-caret-right"></span> 马氏距离</a></li>
    <li ><a href="cd-distance-cos.html"><span class="fa fa-caret-right"></span> 余弦相似度</a></li>
  </ul></li>

  <li><a href="#" data-target=".cluster-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-question-circle"></i>聚类分析<i class="fa fa-collapse"></i></a></li>
  <li><ul class="cluster-menu nav nav-list collapse">
    <li ><a href="privacy-policy.html"><span class="fa fa-caret-right"></span> 基于稀疏子空间聚类的社团检测</a></li>
    <li ><a href="cd-spectrul-cluster-intro.html"><span class="fa fa-caret-right"></span> 谱聚类</a></li>
    <li ><a href="cd-fast-cluster-intro.html"><span class="fa fa-caret-right"></span> Newman快速社团检测</a></li>
  </ul></li>

  <li><a href="#" data-target=".result-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i>结果展示<i class="fa fa-collapse"></i></a></li>
  <li><ul class="result-menu nav nav-list collapse">
    <li ><a href="cd-result-display.html"><span class="fa fa-caret-right"></span> 指标结果</a></li>
    <li ><a href="cd-result-partion-list.html"><span class="fa fa-caret-right"></span> 划分结果列表</a></li>
    <li ><a href="cd-result-map.html"><span class="fa fa-caret-right"></span> 图展示</a></li>
  </ul></li>
  <!--
          <li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-briefcase"></i> 账号 <span class="label label-info">+3</span></a></li>
          <li><ul class="accounts-menu nav nav-list collapse">
              <li ><a href="sign-in.html"><span class="fa fa-caret-right"></span> 登录</a></li>
              <li ><a href="sign-up.html"><span class="fa fa-caret-right"></span> 注销</a></li>
              <li ><a href="reset-password.html"><span class="fa fa-caret-right"></span> 重置密码</a></li>
      </ul></li>
  -->
  <li><a href="help.html" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> 帮助</a></li>
</ul>
