<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="DonghuiComplex.News" %>

<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title><%= newDetail["title"] %></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?00ebc76436134757d89c7529c68821e1";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<a href="index.aspx" class="title">首页</a>
				<nav>
					<ul>
						<li><a href="ym-257/index.aspx" class="active">移民</a></li>
						<li><a href="ly-300/index.aspx">旅游</a></li>
						<li><a href="ny-118/index.aspx">农业</a></li>
                        <li><a href="dc-337/index.aspx">地产</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major"><%= newDetail["title"] %></h1>
                            <section>
                                <p style="border:0px solid red;width:100%">
                                    <span class="image left">
                                        <img src="<%= newDetail["photo"] %>" alt="" /> 
                                    </span>
                                   
                                    <%= newDetail["subtitle"] %>
                                   
                                 <%--   <div class="6u$ 12u$(medium)">
                                        <h3>Ordered</h3>
                                        <ol>
                                            <li>Dolor pulvinar etiam.</li>
                                            <li>Etiam vel felis viverra.</li>
                                            <li>Felis enim feugiat.</li>
                                            <li>Dolor pulvinar etiam.</li>
                                            <li>Etiam vel felis lorem.</li>
                                            <li>Felis enim et feugiat.</li>
                                        </ol>
                                    </div>--%>

                                </p>
                                
                              
                                <p style="border:0px solid blue"><%= newDetail["content"] %></p>
                            </section>

 
 
 
			  

						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a rel="nofollow" href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>