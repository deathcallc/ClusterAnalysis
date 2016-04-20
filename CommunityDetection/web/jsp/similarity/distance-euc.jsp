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
    function setSimilarity(){
      $.ajax({
        data:"title=euc",
        type:"GET",
        dataType: 'json',
        url:"/similarity/set_similarity.do",
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
      <h1 class="page-title">欧氏距离</h1>
      <ul class="breadcrumb">
        <li><a href="http://localhost:8080/index.do">主页</a></li>
        <li class="active">欧氏距离</li>
      </ul>

  </div>
  <div class="main-content">
    <h3>算法介绍</h3>
    欧几里得度量（euclidean metric）（也称欧氏距离）是一个通常采用的距离定义，指在m维空间中两个点之间的真实距离，或者向量的自然长度（即该点到原点的距离）。在二维和三维空间中的欧氏距离就是两点之间的实际距离。<br/><br/>

    二维空间的公式<br/><br/>

    <img src="<c:url value="/resource/images/equation/euc-distance/euc-two.png"/>" style="margin-left:300px;" /><br/><br/>

    三维空间的公式<br/><br/>

    <img src="<c:url value="/resource/images/equation/euc-distance/euc-three.png"/>" style="margin-left:300px;" /><br/><br/>

    n维空间的公式<br/><br/>

    n维欧氏空间是一个点集,它的每个点 X 或向量 x 可以表示为 (x[1]，x[2]，…，x[n]) ，其中 x[i](i = 1，2，…，n) 是实数，称为 X 的第i个坐标。<br/><br/>

    两个点 A = (a[1]，a[2]，…，a[n]) 和 B = (b[1]，b[2]，…，b[n]) 之间的距离 ρ(A，B) 定义为下面的公式：<br/><br/>

    <img src="<c:url value="/resource/images/equation/euc-distance/euc-n.png"/>" style="margin-left:300px;" /><br/><br/>


    <span onclick="setSimilarity();" class="btn btn-primary pull-right" style="margin-top:20px;">使用该度量方法</span>

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
