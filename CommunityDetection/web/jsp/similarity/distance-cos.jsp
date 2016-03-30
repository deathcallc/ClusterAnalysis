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
      <h1 class="page-title">余弦相似性</h1>
      <ul class="breadcrumb">
        <li><a href="index.html">主页</a></li>
        <li class="active">余弦相似性</li>
      </ul>

  </div>
  <div class="main-content">
    <img src="images/equation/cos-distance/cos_distance.png" class="pull-right inline-img hidden-xs" style="max-width:40%; margin-left:1em; margin-top:2em">
    <h3>算法介绍</h3>
    余弦相似度，又称为余弦相似性。通过计算两个向量的夹角余弦值来评估他们的相似度<br/><br/>

    将向量根据坐标值，绘制到向量空间中。<br/><br/>

    求得他们的夹角，并得出夹角对应的余弦值，此余弦值就可以用来表征，这两个向量的相似性。夹角越小，余弦值越接近于1，它们的方向更加吻合，则越相似。<br/><br/>

    余弦值的范围在[-1,1]之间，值越趋近于1，代表两个向量的方向越趋近于0，他们的方向更加一致。相应的相似度也越高。<br/><br/>

    余弦相似度最常见的应用就是计算文本相似度。将两个文本根据他们词，建立俩个向量，计算这两个向量的余弦值，就可以知道两个文本在统计学方法中他们的相似度情况。实践证明，这是一个非常有效的方法。<br/><br/>

    设向量 A = (A1,A2,...,An)，B = (B1,B2,...,Bn)，则余弦相似度的计算公式如下：<br/><br/>

    <img src="images/equation/cos-distance/cos_distance_equ.jpg" style="margin-left:300px;" /><br/>




    <a href="index.html" class="btn btn-primary pull-right" style="margin-top:20px;">使用该度量方法</a>

    <%@include file="/jsp/common/footer.jsp"%>
  </div>
</div>


<script src="<c:url value="/lib/bootstrap/js/bootstrap.js"/>"></script>
<script type="text/javascript">
  $("[rel=tooltip]").tooltip();
  $(function() {
    $('.demo-cancel-click').click(function(){return false;});
  });
</script>


</body></html>
