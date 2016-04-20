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
        data:"title=fast-cluster",
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
      <h1 class="page-title">Newman快速社团检测算法</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">快速社团检测</li>
      </ul>

  </div>
  <div class="main-content">
    <img src="<c:url value="/resource/images/equation/fast-cluster/hierarchical_tree.png"/>" class="pull-right inline-img hidden-xs" style="max-width:40%; margin-left:1em; margin-top:2em">
    <h3>算法介绍</h3>
    Newman快速社团检测算法由Newman在2004年提出，是一种贪心优化的算法。该算法主要是基于模块度的概念，其主要思想是：假定初始情况下每一个节点都属于一个社团，不断地合并使模块度增量最大或者减少最小的两个社团，直到所有的点都包含在同一个社团中。其中，模块度代表了给定的网络划分与网络对应的零模型之间的差异。零模型是在给定点和边的数量的情况下，在顶点之间随机产生连边后形成的网络。由于社团的特点是社团内部的边稠密，社团之间的边稀疏，因此通过计算给定的网络划分与对应的随机网络之间的差异，就能够得知该划分中时候存在着明显的社团结构。<br/><br/>

    假设 <img src="<c:url value="/resource/images/equation/fast-cluster/e_ij.png"/>" /> 为社团i和社团j之间的连边数占所有边数的比例的1/2，则两个社团之间连边数占所有边数的比例即为
    <img src="<c:url value="/resource/images/equation/fast-cluster/eij_eji.png"/>" />。对角线元素<img src="<c:url value="/resource/images/equation/fast-cluster/eii.png"/>" />
    表示社团i内部的连边数占总边数的比例，则<img src="<c:url value="/resource/images/equation/fast-cluster/sum_eii.png"/>" />
    表示落在社团内部的边的比例。<img src="<c:url value="/resource/images/equation/fast-cluster/aii.png"/>" />表示一端连接社团i的边占总边数的比例，
    <img src="<c:url value="/resource/images/equation/fast-cluster/aii.png"/>" />可以通过<img src="<c:url value="/resource/images/equation/fast-cluster/ai_sum_eij.png"/>" />
    计算得到。如果边的连接是随机的，则社团内连边数占总边数比例的期望为<img src="<c:url value="/resource/images/equation/fast-cluster/ai2.png"/>" />。则模块度的计算公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/fast-cluster/q.png"/>" style="margin-left:300px;" /><br/>
    其中，当模块度Q为0时，代表着当前的社团划分中，包含于社团中的边的数据量与随机排列时处于社团内边的数量期望值相同，说明划分中不包含明显的社团结构。而当模块度Q的取值大于0.3时，表明划分中存在着明显的社团结构。<br/><br/>

    算法的大致流程如下：<br/><br/>

    1）初始状态下，每一个顶点属于单独的社团。<br/><br/>

    2）选择使得模块度增加最多（或者减少最少）的两个社团将其合并。其中，模块度增量的计算公式如下：<br/><br/>

    <img src="<c:url value="/resource/images/equation/fast-cluster/q2.png"/>" style="margin-left:300px;" /><br/>

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