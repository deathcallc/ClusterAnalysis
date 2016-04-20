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

  <script type="text/javascript">
    function setCluster(){
      $.ajax({
        data:"title=ssc-cluster",
        type:"GET",
        dataType: 'json',
        url:"/cluster/set_cluster.do",
        error:function(data){
          alert("出错了！！:"+data.msg);
        },
        success:function(data){
          alert(data.msg);
        }
      });
    }
  </script>
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
      <h1 class="page-title">基于稀疏子空间聚类的社团检测算法</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">算法介绍</li>
      </ul>

  </div>
  <div class="main-content">
    <img src="<c:url value="/resource/images/equation/ssc-cluster/y_x_sparse_representation.png"/>" class="pull-right inline-img hidden-xs" style="max-width:40%; margin-left:1em; margin-top:2em">
    <h3>算法介绍</h3>
    基于稀疏子空间聚类的社团检测算法将依据社团检测算法的通用步骤分为三个主要部分进行介绍。三个部分分别是基于压缩感知的相似度矩阵计算，基于随机矩阵理论的关联矩阵计算，以及基于模块度最优的社团检测算法。。<br/><br/>

    <h4>基于压缩感知的相似度矩阵计算</h4>

    这里假设每一个子空间都有足够的数据点，<img src="<c:url value="/resource/images/equation/ssc-cluster/n_le_d.png"/>" /> ，
    并且这些数据点都均匀分布在子空间中，即对于任意的子空间i不存在<img src="<c:url value="/resource/images/equation/ssc-cluster/di.png"/>" />
    个数据点都分布在<img src="<c:url value="/resource/images/equation/ssc-cluster/di-1.png"/>" />
    维度的子空间的情况，则可以在子空间中找到一组基来表示该子空间中的其他数据点。尽管不知道子空间的基，
    但是我们知道基均来自数据矩阵Y的列中。因此，当数据集中的数据点可以由其他的几个数据点的线性组合稀疏表示时，这些数据点就有很大可能处于同一个子空间中，
    其对应的系数越大，就表示两个数据点处于同一个子空间中的可能性越大，并且两个数据点越相似。

    基于上述理论，我们可以通过稀疏表示来计算相似度矩阵，其步骤如下：<br/><br/>

    1）<img src="<c:url value="/resource/images/equation/ssc-cluster/yi_in_r.png"/>" /> 是从Y中将它的第i列
    <img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" /> 删掉后得到的矩阵。求解如下式子，
    得到<img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />在
    <img src="<c:url value="/resource/images/equation/ssc-cluster/y-i.png"/>" />中的稀疏表示
    <img src="<c:url value="/resource/images/equation/ssc-cluster/ci.png"/>" />：<br/><br/>

    <img src="<c:url value="/resource/images/equation/ssc-cluster/min_ci.png"/>" style="margin-left:300px;" /><br/><br/>

    2）得到的稀疏表示<img src="<c:url value="/resource/images/equation/ssc-cluster/ci.png"/>" />是一个N-1维的向量。
    由于数据点与其自身的相似性度量是没有意义的，因此，我们可以在<img src="<c:url value="/resource/images/equation/ssc-cluster/ci.png"/>" />
    的第i行中插入一个0元素，从而构造出一个N维的向量<img src="<c:url value="/resource/images/equation/ssc-cluster/cwh.png"/>" />。
    其中，<img src="<c:url value="/resource/images/equation/ssc-cluster/cwhj.png"/>" />就代表了数据点
    <img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />与数据点
    <img src="<c:url value="/resource/images/equation/ssc-cluster/yj.png"/>" />的相似度。<br/><br/>

    3）对于每一个点<img src="<c:url value="/resource/images/equation/ssc-cluster/i_1_to_n.png"/>" />，
    进行步骤1）和2）的计算，可以得到一个系数矩阵<img src="<c:url value="/resource/images/equation/ssc-cluster/c_list.png"/>" />。
    通常情况下矩阵C是一个非对称的矩阵。由于，当<img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />
    可以表示为一组包含<img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />点的线性组合，并且反过来也存在
    <img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />可以表示为一组包含
    <img src="<c:url value="/resource/images/equation/ssc-cluster/yi.png"/>" />点的线性组合。因此，
    <img src="<c:url value="/resource/images/equation/ssc-cluster/cwh.png"/>" />仍然是一个有效的相似度矩阵。
    可以对矩阵作如下操作，得到一个对称矩阵<img src="<c:url value="/resource/images/equation/ssc-cluster/cwh.png"/>" />：<br/><br/>

    <img src="<c:url value="/resource/images/equation/ssc-cluster/cijwh.png"/>" style="margin-left:300px;" /><br/><br/>

    <h4>基于压缩感知的相似度矩阵计算</h4>

    随机矩阵理论主要用来识别经验相关矩阵中非随机的属性。本节将讨论如何利用随机矩阵理论，从相似度矩阵中识别主要结构构建出关联矩阵。
    假设存在相关矩阵A，矩阵中包含N个时间长度为T的时间片，随机矩阵的元素服从Marcenko-Pastur分布，则特征值的概率密度为<br/><br/>

    <img src="<c:url value="/resource/images/equation/ssc-cluster/lamda_t_n_sqrt.png"/>" style="margin-left:300px;" /><br/><br/>

    其中<br/><br/>

    <img src="<c:url value="/resource/images/equation/ssc-cluster/lamda_1_n_t_2.png"/>" style="margin-left:300px;" /><br/><br/>

    对于经验相关矩阵的特征值，落在<img src="<c:url value="/resource/images/equation/ssc-cluster/lamda_min_to_lamda_max.png"/>" />
    范围内可以被认为是随机噪声引起的。而那些大于由Marcenko-Pastur分布计算得到的最大特征值
    <img src="<c:url value="/resource/images/equation/ssc-cluster/lamda_max.png"/>" />的特征值则代表了数据中有意义的结构。此外，
    经验相关矩阵的谱有一个特性，即最大的特征值<img src="<c:url value="/resource/images/equation/ssc-cluster/lamda_m.png"/>" />
    要比其他的特征值大很多，并且其对应的特征矩阵<img src="<c:url value="/resource/images/equation/ssc-cluster/vm.png"/>" />
    元素都是正数。我们将这个定义为共同因素，所有的成员都受这个因素的影响。即大部分的成员之间的关联都源于相同的因素。对于关联矩阵C可以被分解为三个部分的和：<br/><br/>

    <img src="<c:url value="/resource/images/equation/ssc-cluster/c_decompose.png"/>" style="margin-left:300px;" /><br/><br/>

    <h4>基于模块度最优的社团检测算法</h4>

    假设 <img src="<c:url value="/resource/images/equation/fast-cluster/e_ij.png"/>" /> 为社团i和社团j之间的连边数占所有边数的比例的1/2，
    则两个社团之间连边数占所有边数的比例即为 <img src="<c:url value="/resource/images/equation/fast-cluster/eij_eji.png"/>" />。
    对角线元素<img src="<c:url value="/resource/images/equation/fast-cluster/eii.png"/>" />表示社团i内部的连边数占总边数的比例，
    则<img src="<c:url value="/resource/images/equation/fast-cluster/sum_eii.png"/>" />表示落在社团内部的边的比例。
    <img src="<c:url value="/resource/images/equation/fast-cluster/aii.png"/>" />表示一端连接社团i的边占总边数的比例，
    <img src="<c:url value="/resource/images/equation/fast-cluster/aii.png"/>" />可以通过
    <img src="<c:url value="/resource/images/equation/fast-cluster/ai_sum_eij.png"/>" />计算得到。
    如果边的连接是随机的，则社团内连边数占总边数比例的期望为<img src="<c:url value="/resource/images/equation/fast-cluster/ai2.png"/>" />。则模块度的计算公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/fast-cluster/q.png"/>" style="margin-left:300px;" /><br/><br/>
    其中，当模块度Q为0时，代表着当前的社团划分中，包含于社团中的边的数据量与随机排列时处于社团内边的数量期望值相同，说明划分中不包含明显的社团结构。而当模块度Q的取值大于0.3时，表明划分中存在着明显的社团结构。<br/><br/>

    算法的大致流程如下：<br/><br/>

    1）初始状态下，每一个顶点属于单独的社团。<br/><br/>

    2）选择使得模块度增加最多（或者减少最少）的两个社团将其合并。其中，模块度增量的计算公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/fast-cluster/q2.png"/>" style="margin-left:300px;" /><br/><br/>

    3）重复步骤2，直到所有的顶点都属于同一个社团中。然后，根据需求选择相应的划分。此时可以所需要的社团数量选择划分，也可以选择模块度最优的划分。<br/><br/>
    </p>


    <span onclick="setCluster();" class="btn btn-primary pull-right" style="margin-top:20px;">开始算法</span>

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