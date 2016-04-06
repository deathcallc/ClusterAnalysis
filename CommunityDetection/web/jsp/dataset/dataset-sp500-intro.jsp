<%--
  Created by IntelliJ IDEA.
  User: xiaowei
  Date: 2016/2/12
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
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
      <h1 class="page-title">标普500指数成分股数据集</h1>
      <ul class="breadcrumb">
        <li><a href="index.html">主页</a></li>
        <li class="active">标普500数据集</li>
      </ul>

  </div>
  <div class="main-content">

    <h3>数据集介绍</h3>
    标普500指数作为度量美国股票市场权重股的指数具有极其重要的地位，其包含了500家美国经济主导产业中的领先企业，并且这些企业的股本占到了纽交所和纳斯达克上市企业中的75%。在金融网络的社团检测实验中，将选用标普500指数成分股数据集作为测试数据集。该数据集由1996年的250个交易日中没有停牌的股票中的345只股票组成，并且以交易日为单位，采集了这345只股票每个交易日的开盘价，收盘价以及涨跌幅数据。然后计算每一天每一只股票的对数收益率，由此得到一个345*200维的矩阵S，其中矩阵的列坐标代表交易日，行坐标代表股票，矩阵的值S(i,j)即为股票i在第j个交易日的对数收益率。数据集中的股票分布在金融、科技、零售、工业等十个不同的行业当中。

    <h3>来源</h3>
    https://research.stlouisfed.org/fred2/series/SP500/downloaddata

    <h3>数据集信息</h3>
    <div style="width:700px;">

      <div class="panel panel-default">
        <div class="panel-heading">
          数据集属性
        </div>
        <table class="table table-bordered table-first-column-check table-hover">
          <thead>
          <tr>
            <th class="col-md-3">属性</th>
            <th class="col-md-8" style="text-align:center;">值</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>数据类型</td>
            <td style="text-align:center;">时间片数据</strong></td>
          </tr>
          <tr>
            <td>时间长度</td>
            <td style="text-align:center;">250个交易日</td>
          </tr>
          <tr>
            <td>行数</td>
            <td style="text-align:center;">345</td>
          </tr>
          <tr>
            <td>列数</td>
            <td style="text-align:center;">250</td>
          </tr>
          <tr>
            <td>包含社团数</td>
            <td style="text-align:center;">10</td>
          </tr>
          <tr>
            <td>值含义</td>
            <td style="text-align:center;">对数收益率</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>


    <a href="index.html" class="btn btn-primary pull-right" style="margin-top:20px;">使用该数据集</a>

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


