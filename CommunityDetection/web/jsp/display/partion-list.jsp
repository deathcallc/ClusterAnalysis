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
    <h1 class="page">划分结果列表</h1>
    <h3 class="page-tagline"></h3>
    <div>
      <div class="row">

        <div class="header">
          <ul>
            <h1 class="page-title">算法划分结果</h1>
            <ul class="breadcrumb">
              <ul class="breadcrumb">
                <li><a href="index.html">主页</a></li>
                <li class="active">算法划分结果</li>
              </ul>
            </ul>

        </div>
        <div class="col-md-10 col-md-offset-1">
          <table class="table">
            <thead>
            <tr>
              <th style="width: 50px;"></th>
              <th>分组序号/名称</th>
              <th>成员</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td></td>
              <td>第一组</td>
              <td>
                12 23 28 59 66 73 79 96 98 102 108 133 139 141 155<br/>
                157 173 184 200 208 226 275 282 289 309 333 334 337 339
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第二组</td>
              <td>
                4 9 71 95 100 106 114 124 125 128 147 152 192 193 198<br/>
                201 213 215 251 252 260 262 270 299 305 317 324 328 336 345
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第三组</td>
              <td>
                7 8 10 11 16 21 22 35 38 40 61 78 93 105 113<br/>
                123 127 134 138 144 149 203 210 211 227 228 242 246 247 259<br/>
                266 273 278 280 293 294 313 343
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第四组</td>
              <td>
                5 46 50 63 69 70 74 77 84 92 99 118 120 122 130<br/>
                135 142 145 161 167 171 186 189 195 199 205 216 221 229 231<br/>
                268 284 297 320 322 326 327 330 340 341
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第五组</td>
              <td>
                30 32 33 37 52 53 54 86 90 131 143 153 154 166 174<br/>
                179 180 183 185 220 248 257 272 276 279 292 298 319 323 325<br/>
                331 338 344
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第六组</td>
              <td>
                3 14 15 17 24 34 39 47 49 65 81 82 91 101 104<br/>
                111 119 126 129 140 151 158 169 182 187 191 202 204 219 232<br/>
                233 237 245 250 253 254 256 265 267 269 285 288
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第七组</td>
              <td>
                2 13 19 26 43 48 67 72 87 88 89 97 107 117 132<br/>
                148 159 170 176 178 212 241 244 264 271 296 300 312 315 321
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第八组</td>
              <td>
                18 31 42 60 62 76 85 94 116 146 150 156 160 172 177<br/>
                194 196 207 218 223 225 230 235 238 239 243 249 277 287 302<br/>
                303 308 311 332 342
              </td>
            </tr>
            <tr>
              <td></td>
              <td>第九组</td>
              <td>
                6 25 27 36 45 51 55 56 57 58 64 83 103 110 112<br/>
                164 188 197 209 217 222 224 240 261 263 274 290 291 295 306<br/>
                314
              </td>
            </tr>
            </tr>
            <tr>
              <td></td>
              <td>第十组</td>
              <td>
                1 20 29 41 44 68 75 80 109 115 121 136 137 162 163<br/>
                165 168 175 181 190 206 214 234 236 255 258 281 283 286 301<br/>
                304 307 310 316 318 329 335
              </td>
            </tr>

            </tbody>
          </table>
        </div>

      </div>

      <div>
        <div class="header">
          <ul>
            <h1 class="page-title">真实划分</h1>
            <ul class="breadcrumb">
            </ul>

        </div>
        <div class="col-md-10 col-md-offset-1">
          <table class="table">
            <thead>
            <tr>
              <th style="width: 50px;"></th>
              <th>分组序号/名称</th>
              <th>成员</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td></td>
              <td>Basic Materials</td>
              <td>
                1 24 25 27 29 48 95 104 108 113 115 121 152 171 225 <br/>
                232 234 242 249 269 275 276 285 286 299 339
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Technology</td>
              <td>
                2 6 7 8 17 18 19 53 58 62 82 83 84 88 112<br/>
                117 144 170 172 173 174 187 197 203 207 222 223 226 228 229<br/>
                238 240 243 248 263 270 277 291 300 305 308 313 320 325 338<br/>
                344
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Financial</td>
              <td>
                3 12 15 16 23 34 37 46 50 65 75 79 102 110 116<br/>
                127 129 132 154 160 184 186 189 200 211 219 227 241 254 260<br/>
                264 282 288 291 295 297 298 314 327 334 336<br/>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Others</td>
              <td>
                4 22 26 30 42 44 47 49 52 54 56 57 59 67 72<br/>
                78 89 90 91 94 100 122 123 130 138 139 143 145 155 157<br/>
                158 161 165 192 193 195 205 214 215 217 230 233 255 268 271<br/>
                273 274 278 279 289 293 317 318 322 329 341<br/>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Healthcare</td>
              <td>
                5 11 13 20 38 43 45 55 60 71 133 141 162 167 169<br/>
                181 198 213 224 258 309 315 326
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Consumer Goods</td>
              <td>
                9 32 33 41 51 61 63 68 70 73 81 87 111 120 142<br/>
                150 153 163 168 175 179 185 188 190 194 196 210 221 231 236<br/>
                244 251 252 257 259 287 311 319 332 337 345<br/>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Utilities</td>
              <td>
                10 31 77 92 106 107 109 119 131 135 218 235 523 256 265<br/>
                267 292 306 307
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Services</td>
              <td>
                14 21 28 35 39 40 69 76 85 86 93 96 98 99 101<br/>
                105 124 125 126 134 136 146 147 148 151 156 159 166 176 180<br/>
                182 183 191 201 204 206 208 212 216 239 245 246 247 250 272<br/>
                280 283 284 296 301 303 304 310 312 324 328 330 333 335 340
              </td>
            </tr>
            <tr>
              <td></td>
              <td>Industrial Goods</td>
              <td>
                36 64 80 97 103 114 118 128 137 149 164 177 178 199 202<br/>
                209 237 261 262 290 302 316 323 342 343
              </td>
            </tr>
            </tr>
            <tr>
              <td></td>
              <td>Conglomerates</td>
              <td>
                66 74 140 220 266 321 331 294
              </td>
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