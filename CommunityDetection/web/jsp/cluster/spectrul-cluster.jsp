<%--
  Created by IntelliJ IDEA.
  User: xiaowei
  Date: 2016/2/12
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"><head>
  <%@include file="/jsp/common/commonPackage.jsp"%>
</head>
<body class=" theme-blue">

<!-- Demo page code -->

<script type="text/javascript">
  $(function() {
    var match = document.cookie.match(new RegExp('color=([^;]+)'));
    if(match) var color = match[1];
    if(color) {
      $('body').removeClass(function (index, css) {
        return (css.match (/\btheme-\S+/g) || []).join(' ')
      })
      $('body').addClass('theme-' + color);
    }

    $('[data-popover="true"]').popover({html: true});

  });
</script>
<style type="text/css">
  #line-chart {
    height:300px;
    width:800px;
    margin: 0px auto;
    margin-top: 1em;
  }
  .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
    color: #fff;
  }
</style>

<script type="text/javascript">
  $(function() {
    var uls = $('.sidebar-nav > ul > *').clone();
    uls.addClass('visible-xs');
    $('#main-menu').append(uls.clone());
  });
</script>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">


<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<!--<![endif]-->

<%@include file="/jsp/common/header.jsp"%>


<div class="sidebar-nav">
  <%@include file="/jsp/common/letfNav.jsp"%>
</div>

<div class="content">
  <div class="header">
    <ul>
      <h1 class="page-title">谱聚类算法</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">谱聚类</li>
      </ul>

  </div>
  <div class="main-content">

    <h3>算法介绍</h3>
    谱聚类是一类基于谱图理论的聚类方法，其主要思想是通过构建给定数据集的相似度矩阵，将数据集转化为无向图的形式，从而将聚类问题转化为图分割问题。<br/><br/>

    给定数据集 <img src="<c:url value="/resource/images/equation/spectral-cluster/s_cdot.png"/>" />，以及常数k，k表示我们希望得到的簇的个数。则谱聚类的大致步骤如下：<br/><br/>

    1）选择适合的相似性度量函数，计算出数据集对应相似度矩阵A。其中相似度矩阵A必须满足对称且非负，即 <img src="<c:url value="/resource/images/equation/spectral-cluster/asi_ge0.png"/>" />。<br/><br/>

    2）计算相似度矩阵A的度矩阵D，以及其相应的拉普拉斯矩阵L。其中度矩阵D的对角线元素 D(i,i)为相似度矩阵A第i行的各元素之和，非对角线元素皆为0。拉普拉斯矩阵的计算公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/spectral-cluster/laplace.png"/>" style="margin-left:300px;" /><br/>

    3）计算拉普拉斯矩阵L的特征值和特征向量。选择其中最大的k个特征值，取其对应的特征向量，组成矩阵X，<img src="<c:url value="/resource/images/equation/spectral-cluster/x_rn.png"/>" />。<br/><br/>

    4）将矩阵X的各行正则化，得到矩阵X'。正则化公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/spectral-cluster/x_normal.png"/>" style="margin-left:300px;" /><br/>

    5）将矩阵X'的第i行数据看作是一个存在于k维空间中的数据点，然后使用诸如k-mean等其他聚类算法对矩阵X'进行聚类。得到聚类结果之后，将<img src="<c:url value="/resource/images/equation/spectral-cluster/xi.png"/>" />
    与数据集S中的<img src="<c:url value="/resource/images/equation/spectral-cluster/si.png"/>" />一一对应即可得到最终的聚类结果。<br/><br/>

    从谱聚类的步骤中不难发现，在步骤2)中获得相似度矩阵A之后就可以直接通过其他的聚类方法获得聚类结果，谱聚类相对于其他的聚类方法多出了步骤3)和步骤4)。由于矩阵中，
    特征值的大小代表了其对应的特征向量对于矩阵的重要程度，特征值越大，则其对应的特征向量越重要。而谱聚类正是通过截取相似度矩阵中前k个最大特征值对应的特征向量，
    将相似度矩阵中冗余和无关的部分剔除，从而使得谱聚类相比其他聚类方法能够获得更加准确的结果。而同样的，对比其他的聚类方法，谱聚类也存在一些缺陷，其时间复杂度过高。
    由于谱聚类需要计算相似度矩阵的特征值和特征向量，矩阵特征值计算的时间复杂度为的<img src="<c:url value="/resource/images/equation/spectral-cluster/o3.png"/>" />，
    这就导致了谱聚类的可伸缩性差。在处理对象较多的数据集时，谱聚类往往需要花费较长的时间。<br/><br/>


    <a href="index.html" class="btn btn-primary pull-right" style="margin-top:20px;">开始算法</a>

    <%@include file="/jsp/common/footer.jsp"%>
  </div>
</div>


<script src="<c:url value="/resource/lib/bootstrap/js/bootstrap.js"/>"></script>
<script type="text/javascript">
  $("[rel=tooltip]").tooltip();
  $(function() {
    $('.demo-cancel-click').click(function(){return false;});
  });
</script>


</body></html>