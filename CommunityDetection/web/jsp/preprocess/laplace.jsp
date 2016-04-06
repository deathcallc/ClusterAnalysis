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
      <h1 class="page-title">获取拉普拉斯矩阵</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">获取拉普拉斯矩阵</li>
      </ul>

  </div>
  <div class="main-content">

    <h3>算法介绍</h3>
    图论的数学领域中的拉普拉斯矩阵（也被称为导纳矩阵，吉尔霍夫矩阵或离散拉普拉斯）是图的矩阵表示。<br/><br/>

    拉普拉斯矩阵 结合 吉尔霍夫理论 可以用来计算图的最小生成树的个数。拉普拉斯矩阵还可用来寻找图的其他属性：谱图理论spectral graph theory.<br/><br/>

    黎曼几何的Cheeger不等式有涉及了拉普拉斯矩阵的离散模拟。这或许是谱图理论中最重要的定理也是在算法应用中最有用的facts.它通过拉普拉斯矩阵的第二特征值来近似图的最小割。<br/><br/>

    拉普拉斯矩阵是 度矩阵 和 邻接矩阵的差。度矩阵是一个对角矩阵，其包含了每个顶点的度。在处理有向图时，根据应用来选择入度或出度。<br/><br/>
    <br/><br/>
    属性：<br/><br/>
    1.拉普拉斯矩阵是半正定矩阵。<br/><br/>
    2.特征值中0出现的次数就是图连通区域的个数。<br/><br/>
    3.最小特征值永远是0，因为每个拉普拉斯矩阵对应特征向量[1,1,1,1,...,1]Lv=0.<br/><br/>
    4.最小的非0特征值称为谱隙spectral gap.<br/><br/>
    5.最小非零特征值是图的代数连通度。<br/><br/>

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
