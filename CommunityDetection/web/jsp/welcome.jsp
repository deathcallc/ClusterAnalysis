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
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae ligula sed est aliquam accumsan. Phasellus eleifend fermentum ullamcorper. Nulla mi mi, egestas id tortor non, auctor consectetur mi. Praesent in ante dolor. Proin pharetra nec augue quis imperdiet. Vestibulum ullamcorper nulla sodales, scelerisque velit et, adipiscing arcu. Suspendisse eu accumsan neque. Suspendisse potenti. Quisque non lectus elementum elit convallis ornare aliquam sit amet metus. Vestibulum ut turpis ipsum. Sed ut malesuada enim, in interdum lorem. Nulla facilisi.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae ligula sed est aliquam accumsan. Phasellus eleifend fermentum ullamcorper.</p>

        <h2 class="page" style="clear:both;">数据展示</h2>
        <img src="<c:url value="/resource/images/preview/d3.png"/>" class="pull-right inline-img hidden-xs" style="max-width: 35%; margin-top: -4em; margin-left: 1em;">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae ligula sed est aliquam accumsan. Phasellus eleifend fermentum ullamcorper. Nulla mi mi, egestas id tortor non, auctor consectetur mi. Praesent in ante dolor. Proin pharetra nec augue quis imperdiet. Vestibulum ullamcorper nulla sodales, scelerisque velit et, adipiscing arcu. Suspendisse eu accumsan neque. Suspendisse potenti. Quisque non lectus elementum elit convallis ornare aliquam sit amet metus. Vestibulum ut turpis ipsum. Sed ut malesuada enim, in interdum lorem. Nulla facilisi.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae ligula sed est aliquam accumsan. Phasellus eleifend fermentum ullamcorper. Nulla mi mi, egestas id tortor non, auctor consectetur mi.</p>

      </div>

      <div class="clearfix"></div>

      <h2 class="page">本系统特点</h2>
      <div class="row pricing">
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">可扩展的数据接入</h2>
            <ul>
              <li class="price">$8.99 / month</li>
              <li class="info">For single user teams</li>
              <li>1 user</li>
              <li>Limited Access</li>
              <li>5MB of space</li>
              <li>No Support</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">灵活的算法组合</h2>
            <ul>
              <li class="price">$24.99 / month</li>
              <li class="info">For medium sized teams</li>
              <li>20 users</li>
              <li>Unlimited access</li>
              <li>1GB of space</li>
              <li>Email Support</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">全面的结果分析</h2>
            <ul>
              <li class="price">$75.99 / month</li>
              <li class="info">For very large teams</li>
              <li>50 users</li>
              <li>Unlimited access</li>
              <li>10GB of space</li>
              <li>Priority support</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn btn-primary" href="#"><i class="icon-ok"></i> Select plan</a></p> -->
          </div>
        </div>
        <div class="col-sm-3">
          <div class="product">
            <h2 class="text-info">可视化的结果展示</h2>
            <ul>
              <li class="price">Contact us for pricing</li>
              <li class="info">For very large enterprises</li>
              <li>Unlimited users</li>
              <li>Unlimited access</li>
              <li>Unlimited space</li>
              <li>24/7 Phone Support</li>
            </ul>
            <!--    <p class="call-to-action"><a class="btn" href="#"><i class="icon-ok"></i> Contact Sales</a></p> -->
          </div>
        </div>

        <div style="clear: both;"></div>
      </div>

      <div class="well banner">
        <h3 style="margin-top:0px;">A basic plan is also available</h3>
        <a class="btn btn-primary btn-sm well-btn pull-right" style="margin-top: -1.75em;">Get Basic</a>
        <p style="margin-bottom:0px;">The basic plan is great for single person teams. Just pay a small yearly fee.</p>
      </div>
    </div>



    <footer>
      <hr>

      <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
      <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
      <p>Â© 2014 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
    </footer>
  </div>





  <div class="panel panel-default">
    <a href="#page-stats" class="panel-heading" data-toggle="collapse">Latest Stats</a>
    <div id="page-stats" class="panel-collapse panel-body collapse in">

      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="knob-container">
            <input class="knob" data-width="200" data-min="0" data-max="3000" data-displayPrevious="true" value="2500" data-fgColor="#92A3C2" data-readOnly=true;>
            <h3 class="text-muted text-center">Accounts</h3>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="knob-container">
            <input class="knob" data-width="200" data-min="0" data-max="4500" data-displayPrevious="true" value="3299" data-fgColor="#92A3C2" data-readOnly=true;>
            <h3 class="text-muted text-center">Subscribers</h3>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="knob-container">
            <input class="knob" data-width="200" data-min="0" data-max="2700" data-displayPrevious="true" value="1840" data-fgColor="#92A3C2" data-readOnly=true;>
            <h3 class="text-muted text-center">Pending</h3>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="knob-container">
            <input class="knob" data-width="200" data-min="0" data-max="15000" data-displayPrevious="true" value="10067" data-fgColor="#92A3C2" data-readOnly=true;>
            <h3 class="text-muted text-center">Completed</h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-6 col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading no-collapse">Not Collapsible<span class="label label-warning">+10</span></div>
        <table class="table table-bordered table-striped">
          <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>Mark</td>
            <td>Tompson</td>
            <td>the_mark7</td>
          </tr>
          <tr>
            <td>Ashley</td>
            <td>Jacobs</td>
            <td>ash11927</td>
          </tr>
          <tr>
            <td>Audrey</td>
            <td>Ann</td>
            <td>audann84</td>
          </tr>
          <tr>
            <td>John</td>
            <td>Robinson</td>
            <td>jr5527</td>
          </tr>
          <tr>
            <td>Aaron</td>
            <td>Butler</td>
            <td>aaron_butler</td>
          </tr>
          <tr>
            <td>Chris</td>
            <td>Albert</td>
            <td>cab79</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="col-sm-6 col-md-6">
      <div class="panel panel-default">
        <a href="#widget1container" class="panel-heading" data-toggle="collapse">Collapsible </a>
        <div id="widget1container" class="panel-body collapse in">
          <h2>Here's a Tip</h2>
          <p>This template was developed with <a href="http://middlemanapp.com/" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
          <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't have to waste your time doing it yourself!</p>
          <p>The layout.erb file includes the header, footer, and side navigation and all of the views are broken out into their own files.</p>
          <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like you would expect.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-6 col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading no-collapse">
                <span class="panel-icon pull-right">
                    <a href="#" class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i class="fa fa-refresh"></i></a>
                </span>

          Needed to Close
        </div>
        <table class="table list">
          <tbody>
          <tr>
            <td>
              <a href="#"><p class="title">Care Hospital</p></a>
              <p class="info">Sales Rating: 86%</p>
            </td>
            <td>
              <p>Date: 7/19/2012</p>
              <a href="#">View Transaction</a>
            </td>
            <td>
              <p class="text-danger h3 pull-right" style="margin-top: 12px;">$20,500</p>
            </td>
          </tr>
          <tr>
            <td>
              <a href="#"><p class="title">Custom Eyesight</p></a>
              <p class="info">Sales Rating: 58%</p>
            </td>
            <td>
              <p>Date: 7/19/2012</p>
              <a href="#">View Transaction</a>
            </td>
            <td>
              <p class="text-danger h3 pull-right" style="margin-top: 12px;">$12,600</p>
            </td>
          </tr>
          <tr>
            <td>
              <a href="#"><p class="title">Clear Dental</p></a>
              <p class="info">Sales Rating: 76%</p>
            </td>
            <td>
              <p>Date: 7/19/2012</p>
              <a href="#">View Transaction</a>
            </td>
            <td>
              <p class="text-danger h3 pull-right" style="margin-top: 12px;">$2,500</p>
            </td>
          </tr>
          <tr>
            <td>
              <a href="#"><p class="title">Safe Insurance</p></a>
              <p class="info">Sales Rating: 82%</p>
            </td>
            <td>
              <p>Date: 7/19/2012</p>
              <a href="#">View Transaction</a>
            </td>
            <td>
              <p class="text-danger h3 pull-right" style="margin-top: 12px;">$22,400</p>
            </td>
          </tr>

          </tbody>
        </table>
      </div>
    </div>
    <div class="col-sm-6 col-md-6">
      <div class="panel panel-default">
        <a href="#widget2container" class="panel-heading" data-toggle="collapse">Collapsible </a>
        <div id="widget2container" class="panel-body collapse in">
          <h2>Built with Less</h2>
          <p>The CSS is built with Less. There is a compiled version included if you prefer plain CSS.</p>
          <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio peanut leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory shallot winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram zucchini swiss chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish beet greens broccoli brussels.</p>
          <p><a class="btn btn-primary">Learn more »</a></p>
        </div>
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
