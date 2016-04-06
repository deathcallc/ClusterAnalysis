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
      <h1 class="page-title">马氏距离</h1>
      <ul class="breadcrumb">
        <li><a href="index.html">主页</a></li>
        <li class="active">马氏距离</li>
      </ul>

  </div>
  <div class="main-content">
    <h3>算法介绍</h3>

    马氏距离又称为出租车几何或曼哈顿距离（Manhattan Distance），是由十九世纪的赫尔曼·闵可夫斯基所创词汇 ，是种使用在几何度量空间的几何学用语，用以标明两个点在标准坐标系上的绝对轴距总和。
    我们可以定义曼哈顿距离的正式意义为L1-距离或城市区块距离，也就是在欧几里德空间的固定直角坐标系上两点所形成的线段对轴产生的投影的距离总和。<br/><br/>

    例如在平面上，坐标（x1, y1）的i点与坐标（x2, y2）的j点的曼哈顿距离为：<br/><br/>

    <img src="<c:url value="/resource/images/equation/ma-distance/ma-distance.png"/>" style="margin-left:300px;" /><br/><br/>

    要注意的是，曼哈顿距离依赖坐标系统的转度，而非系统在坐标轴上的平移或映射。<br/><br/>

    曼哈顿距离的命名原因是从规划为方型建筑区块的城市（如曼哈顿）间，最短的行车路径而来（忽略曼哈顿的单向车道以及只存在于3、14大道的斜向车道）。任何往东三区块、往北六区块的的路径一定最少要走九区块，没有其他捷径。<br/><br/>

    出租车几何学满足除了SAS全等定理之外的希伯特定理，SAS全等指任两个三角型两个边与它们的夹角均分别对应相等，则这两个三角型全等。<br/><br/>

    在出租车几何学中，一个圆是由从圆心向各个固定曼哈顿距离标示出来的点围成的区域。因此这种圆其实就是旋转了45度的正方形。如果有一群圆，
    任两圆皆相交，则整群圆必在某点相交；因此曼哈顿距离会形成一个超凸度量空间（Injective metric space）。对一个半径为r 的圆来说，这个正方形的圆每边长√2r。
    此'"圆"的半径r对切比雪夫距离 (L∞ 空间)的二维平面来说，也是一个对座标轴来说边长为2r的正方形，因此二维切比雪夫距离可视为等同于旋转且放大过的二维曼哈顿距离。
    然而这种介于L1与L∞的相等关系并不能延伸到更高的维度。<br/><br/>




    <a href="index.html" class="btn btn-primary pull-right" style="margin-top:20px;">使用该度量方法</a>

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
