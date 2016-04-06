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
      <h1 class="page-title">k-core分解</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">k-core分解</li>
      </ul>

  </div>
  <div class="main-content">
    <img src="<c:url value="/resource/images/webpic/k-core/k-core.png"/>" class="pull-right inline-img hidden-xs" style="max-width:40%; margin-left:1em; margin-top:2em">
    <h3>算法介绍</h3>
    k-core分解主要用于获取网络中重要的节点。其中k为用户参数，表示节点的度数。具体步骤如下：<br/><br/>

    1）计算网络中所有节点的度，将网络中所有度小于等于k的节点以及与节点相连的边全部剔除掉。<br/><br/>

    2）更新网络中所有节点的度，重复步骤1）直到网络中不再有度小于等于k的节点为止。<br/><br/>

    <br/><br/>
    <br/><br/>
    <br/><br/>


    <a href="index.html" class="btn btn-primary pull-right" style="margin-top:20px;">使用该算法</a>

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
