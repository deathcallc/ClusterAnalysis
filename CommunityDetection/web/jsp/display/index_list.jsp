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
  <div class="main-content">
    <h1 class="page">性能指标</h1>
    <h3 class="page-tagline"></h3>
    <div>
      <div class="row">

        <div class="header">
          <ul>
            <h1 class="page-title">总体指标</h1>
            <ul class="breadcrumb">
            </ul>

        </div>
        <div class="col-md-10 col-md-offset-1">
          <table class="table">
            <thead>
            <tr>
              <th style="width: 50px;"></th>
              <th>算法名称</th>
              <th>加权f1度量</th>
              <th class="hidden-xs">Adjusted Rand度量</th>
              <th>Rand指数</th>
              <th>jaccard指数</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td></td>
              <td>基于稀疏子空间聚类的社团检测</td>
              <td>0.2044</td>
              <td>-0.0007</td>
              <td>0.3815</td>
              <td>0.0872</td>
            </tr>
            </tbody>
          </table>
        </div>

      </div>

      <div>
        <div class="header">
          <ul>
            <h1 class="page-title">各分组指标</h1>
            <ul class="breadcrumb">
            </ul>

        </div>
        <div class="col-md-10 col-md-offset-1">
          <table class="table">
            <thead>
            <tr>
              <th style="width: 50px;"></th>
              <th>分组序号/名称</th>
              <th>准确率</th>
              <th class="hidden-xs">召回率</th>
              <th>F1度量</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td></td>
              <td>Basic Materials</td>
              <td>0.113</td>
              <td>0.346</td>
              <td>0.170</td>
            </tr>
            <tr>
              <td></td>
              <td>Technology</td>
              <td>0.177</td>
              <td>0.370</td>
              <td>0.239</td>
            </tr>
            <tr>
              <td></td>
              <td>Financial</td>
              <td>0.156</td>
              <td>0.366</td>
              <td>0.219</td>
            </tr>
            <tr>
              <td></td>
              <td>Others</td>
              <td>0.191</td>
              <td>0.304</td>
              <td>0.234</td>
            </tr>
            <tr>
              <td></td>
              <td>Healthcare</td>
              <td>0.088</td>
              <td>0.304</td>
              <td>0.136</td>
            </tr>
            <tr>
              <td></td>
              <td>Consumer Goods</td>
              <td>0.157</td>
              <td>0.341</td>
              <td>0.215</td>
            </tr>
            <tr>
              <td></td>
              <td>Utilities</td>
              <td>0.079</td>
              <td>0.368</td>
              <td>0.130</td>
            </tr>
            <tr>
              <td></td>
              <td>Services</td>
              <td>0.177</td>
              <td>0.283</td>
              <td>0.218</td>
            </tr>
            <tr>
              <td></td>
              <td>Industrial Goods</td>
              <td>0.125</td>
              <td>0.400</td>
              <td>0.190</td>
            </tr>
            </tr>
            <tr>
              <td></td>
              <td>Conglomerates</td>
              <td>0.050</td>
              <td>0.500</td>
              <td>0.091</td>
            </tr>
            </tbody>
          </table>
        </div>

      </div>
    </div>
    <div style="float:left; width:100%">
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