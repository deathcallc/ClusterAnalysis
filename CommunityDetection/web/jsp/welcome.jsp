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
    $(function() {
      $(".knob").knob();
    });
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


  </div>

  <div class="main-content">
    <div class="padding-left padding-right">
      <h1 class="page">多关系社交<span style="border-bottom: 4px solid #eee;">网络挖掘</span>系统概述</h1>
      <h3 class="page-tagline" style="margin-top: 2em;">集成采集、分析、展示一体的科研仿真系统</h3>

      <div>
        <img src="<c:url value="/resource/images/preview/14.png"/>" class="pull-right inline-img hidden-xs" style="max-width: 35%; margin-left: 1em;">
        <h2 class="page">系统概述</h2>
        <p>多关系社交网络挖掘系统主要包含多源异构数据的采集，社团检测，结果分析以及展示等功能。该系统前段使用了css/html、JQuery进行开发，在社团划分结果的展示上采用了开源的JavaScript库D3，这使得社团划分结果的展示更加直观而形象。系统的后端使用了Java语言开发，并且使用了轻量级的开源框架spring和Mybatis，框架的使用大大提高了系统的开发效率和可维护性。此外，针对多源异构数据集来源多样复杂的特点，系统在设计的过程中融入了多种设计模式，使得满足开放-关闭原则的同时，在数据采集，清洗和分析等功能的扩展上能够表现出更强的灵活性，以更好地解决由于数据集多样所带来的在数据清洗和分析方法上的不确定性的问题。</p>

        <h2 class="page">社团分析</h2>
        <img src="<c:url value="/resource/images/preview/8.png"/>" class="pull-left inline-img hidden-xs" style="max-width: 35%; margin-top: -4em; margin-right: 2.25em;">
        <p>人们社交行为或者合作关系通常会产生广泛而多样的社团结构关系，
          例如：家庭、工作、朋友圈和论文合作关系等，同时还创造出了很多虚拟的组织
          ，例如在线社团。在过去的很长时间里，人们对社交网络中隐含的社团结构进行了大量的研究。</p>
        <p>社团发现的研究具有十分重要的意义。根据顶点的位置或者属性，通过识别
          簇的边界能够对节点进行分类，并从中揭示出一些重要的节点。例如簇的中心节
          点与簇的其他节点具有大量共享的边，这些节点保证了簇的稳定性，而处于两个
          簇之间的节点具有中介性，对于两个簇之间的信息交互以及关系起着重要的作用。
          簇的划分以及重要节点的识别对于社交网络或代谢网络都有十分重要的意义。</p>

        <h2 class="page" style="clear:both;">数据展示</h2>
        <img src="<c:url value="/resource/images/preview/d3.png"/>" class="pull-right inline-img hidden-xs" style="max-width: 35%; margin-top: -4em; margin-left: 1em;">
        <p>系统采用了多种算法结果展示的方式。其中，系统采用了D3库实现网络结构的可视化功能。
          当用户通过本系统完成相应的算法时，除了可以通过已有的几种方式获取算法结果以外，还能够通过网络结构的可视化功能获取算法结果。
          算法结果的可视化功能，使得用户能够更加直观地了解到算法计算得到的网络结构以及相应的网络特征，
          从而更好地指导用户的后续实验工作。</p>
        <p>D3库是基于数据的文档操作javascript开源库，D3能够把数据和HTML、SVG、CSS结合起来，创造出可交互的数据图表。
          D3 是最流行的可视化库之一，它被很多其他的表格插件所使用。它允许绑定任意数据到DOM，然后将数据驱动转换应用到Document中。
          你可以使用它用一个数组创建基本的HTML表格，或是利用它的流体过度和交互，用相似的数据创建惊人的SVG条形图。</p>

      </div>

      <div class="clearfix"></div>

      <h2 class="page">本系统特点</h2>
      <div class="row pricing">
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">可扩展的数据接入</h2>
            <ul>
              <li class="price">预设数据</li>
              <li class="info">灵活扩展</li>
              <li>数据清洗</li>
              <li>非侵入式扩展</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">灵活的算法组合</h2>
            <ul>
              <li class="price">算法分步组合</li>
              <li class="info">算法灵活可选</li>
              <li>预设多种算法</li>
              <li>用户任意扩展</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">全面的结果分析</h2>
            <ul>
              <li class="price">分类结果展示</li>
              <li class="info">结果分析展示</li>
              <li>可视化展示</li>
              <li>自定义展示</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">可视化的结果展示</h2>
            <ul>
              <li class="price">网状结构展示</li>
              <li class="info">兼容性强</li>
              <li>用户可交互</li>
              <li>界面友好</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn" href="#"><i class="icon-ok"></i> Contact Sales</a></p> -->
          </div>
        </div>

        <div style="clear: both;"></div>
      </div>

    </div>
  </div>


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
