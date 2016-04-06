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
      <h1 class="page-title">获取拉普拉斯伪逆</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">获取拉普拉斯伪逆</li>
      </ul>

  </div>
  <div class="main-content">

    <h3>算法介绍</h3>
    获取拉普拉斯矩阵的伪逆。<br/><br/>

    拉普拉斯矩阵可以参照相关页面的介绍。<br/><br/>

    伪逆矩阵是逆矩阵的广义形式。由于奇异矩阵或非方阵的矩阵不存在逆矩阵，但在matlab里可以用函数pinv(A)求其伪逆矩阵。<br/><br/>

    基本语法为X=pinv(A),X=pinv(A,tol),其中tol为误差,pinv为pseudo-inverse的缩写：max(size(A))*norm(A)*eps。
    函数返回一个与A的转置矩阵A' 同型的矩阵X，并且满足：AXA=A,XAX=X.此时，称矩阵X为矩阵A的伪逆，也称为广义逆矩阵。pinv(A)具有inv(A)的部分特性，但不与inv(A)完全等同。
    如果A为非奇异方阵，pinv(A)=inv(A)，但却会耗费大量的计算时间，相比较而言，inv(A)花费更少的时间。<br/><br/>

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
