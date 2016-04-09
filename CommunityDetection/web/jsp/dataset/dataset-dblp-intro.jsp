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
      <h1 class="page-title">DBLP合作者关系网络数据集</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">DBLP数据集</li>
      </ul>

  </div>
  <div class="main-content">

    <h3>数据集介绍</h3>
    DBLP计算机科学参考书目(DBLP computer science bibliography)提供了一份全面的计算机领域研究论文清单，dblp合作关系网络数据集就是由这份清单中包含的合作者关系构成。作者作为网络中的节点，当两名作者至少共同发表了一片文章时，就将两名作者对应的节点相连。真实的社团则根据作者是否往相同的期刊、会议或者出版物发表文章来确定，然后将节点少于3个的真实社团移除，并取得前5000个质量较高的社团作为数据集。
    <br/>
    本数数据集已剔除掉其中一些不重要的节点。这里采用k-壳分解法清除不重要的节点，具体步骤如下：计算网络中所有节点的度，然后将网络中所有度小于等于k的节点以及与节点相连的边全部剔除掉，然后更新网络中所有节点的度，重复这个过程直到网络中不再有度小于等于k的节点为止。k-壳分解的k值取7，清理过后，数据集存在真实社团895个，包含35330条边以及6002个节点。

    <h3>来源</h3>
    http://snap.stanford.edu/data/com-DBLP.html

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
            <td style="text-align:center;">图数据</strong></td>
          </tr>
          <tr>
            <td>边数</td>
            <td style="text-align:center;">35330</td>
          </tr>
          <tr>
            <td>节点数</td>
            <td style="text-align:center;">6002</td>
          </tr>
          <tr>
            <td>包含社团数</td>
            <td style="text-align:center;">895</td>
          </tr>
          <tr>
            <td>连边含义</td>
            <td style="text-align:center;">两个作者存在合作关系</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>


    <a href="http://localhost:8080/dataset/set_dataset.do?title=dblp" class="btn btn-primary pull-right" style="margin-top:20px;">使用该数据集</a>

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
