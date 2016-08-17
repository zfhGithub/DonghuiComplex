﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DonghuiComplex.ny_118.index" %>

<!DOCTYPE html>
<html>
<head>
		<title>农业</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<!-- js -->
		<script src="http://apps.bdimg.com/libs/jquery/1.7.1/jquery.min.js"></script>
		<!-- //js -->
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Agriculture_firm Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
				function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- //for-mobile-apps -->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>

        <link href="/assets/customerservice/customer-service.css" rel="stylesheet" />
        <link href="/assets/customerservice/lanren.css" rel="stylesheet" />
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- banner -->
	<div id="home" class="banner">
	<div class="container">
		<div class="navi">
				<div class="head-logo">
				<%--	<a href="index.aspx"><img src="images/logo.png" alt=" "></a>--%>
                  
				</div>
				<div class="banner-nav">
					<span class="menu"><img src="images/menu.png" alt=" "/></span>
						<nav class="cl-effect-3">
							<ul class="nav1">
								<li class="active"><a href="#home" class="scroll">首页</a></li>
								<li><a href="#about" class="scroll">关于</a></li>
								<li><a href="#products" class="scroll">产品</a></li>
                                <li><a href="#top" class="scroll">新闻</a> </li>
							<%--	<li><a href="#pricing" class="scroll">PRICING</a></li>--%>
								<li><a href="#contact" class="scroll">留言</a></li>
							</ul>
						</nav>
				</div>
				<div class="clearfix"> </div>
		</div>
				<!-- script for menu -->
					<script> 
						$( "span.menu" ).click(function() {
						$( "ul.nav1" ).slideToggle( 300, function() {
						 // Animation complete.
						});
						});
					</script>
				<!-- //script for menu -->
		<div class="banner-info">
			<div class="banner-info-left">
				<h3>我们的使命是让您  <span>吃到放心的农产品</span></h3>
				<p><%--Donec rutrum congue leo eget malesuada--%><span><%--Curabitur non nulla sit amet.--%></span></p>
				<div class="start">
					<a href="#about">查看更多...</a>
				</div>
			</div>
			<div class="banner-info-right">
				<div class="banner-info-fig">
					<a href="images/4.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="img-responsive" src="images/4-.jpg" />
					</a>
				</div>
				<div class="banner-info-fig">
					<a href="images/5.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="img-responsive" src="images/5-.jpg" />
					</a>
				</div>
				<div class="clearfix"> </div>
				<div class="banner-info-fig">
					<a href="images/6.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="img-responsive" src="images/6-.jpg" />
					</a>
				</div>
				<div class="banner-info-fig">
					<a href="images/7.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
						<img class="img-responsive" src="images/7-.jpg" />
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
			<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>
				<!-- Portfolio Ends Here -->
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						var filterList = {
							init: function () {
								// MixItUp plugin
							// http://mixitup.io
							$('#portfoliolist').mixitup({
								targetSelector: '.portfolio',
								filterSelector: '.filter',
								effects: ['fade'],
								easing: 'snap',
								// call the hover effect
								onMixEnd: filterList.hoverEffect()
							});	
						},
						hoverEffect: function () {
							// Simple parallax effect
							$('#portfoliolist .portfolio').hover(
								function () {
									$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
									$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
								},
								function () {
									$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
									$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
								}		
							);				
						}
					};
					// Run the show!
						filterList.init();
					});	
					</script>
	</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
	<div class="container">
<!-- Slider-starts-Here -->
				<script src="js/responsiveslides.min.js"></script>
				 <script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				      // Slideshow 4
				      $("#slider3").responsiveSlides({
				        auto: true,
				        pager: true,
				        nav: false,
				        speed: 500,
				        namespace: "callbacks",
				        before: function () {
				          $('.events').append("<li>before event fired.</li>");
				        },
				        after: function () {
				          $('.events').append("<li>after event fired.</li>");
				        }
				      });
				
				    });
				  </script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
                	<h3>新闻</h3>
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner-bottom-info">
							<h3>OUR BEGINING</h3>
							<p> <img src="images/2.jpg" /> Donec rutrum congue leo eget malesuada.Curabitur non nulla sit amet
								nisl tempus convallis quis ac lactus.Sed porttitor lactus nibh.Proin
								eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
								porttitoraccumsan tincidunt.
								Curabitur aliquet quam id dui posuere blandit.
								Nulla Quis lorum nisl tempus convallis quis ac lactus.Sed porttitorlactus nibh
								eget tortor risus.Nulla porttitor accumsan tincidunt.</p>
						</div>
					</li>
					<li>
						<div class="banner-bottom-info">
							<h3>OUR PROCESSING</h3>
							<p>Nulla porttitor congue leo eget malesuada.Curabitur non nulla sit amet
								nisl tempus convallis quis ac lactus.Sed porttitor lactus nibh.Proin
								eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
								porttitoraccumsan tincidunt.
								Curabitur aliquet quam id dui posuere blandit.
								Nulla Quis lorum nisl tempus convallis quis ac lactus.Sed porttitorlactus nibh
								eget tortor risus.Nulla porttitor accumsan tincidunt.</p>
						</div>
					</li>
					<li>
						<div class="banner-bottom-info">
							<h3>OUR REQUIREMENT</h3>
							<p>Curabitur rutrum congue leo eget malesuada.Curabitur non nulla sit amet
								nisl tempus convallis quis ac lactus.Sed porttitor lactus nibh.Proin
								eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
								porttitoraccumsan tincidunt.
								Curabitur aliquet quam id dui posuere blandit.
								Nulla Quis lorum nisl tempus convallis quis ac lactus.Sed porttitorlactus nibh
								eget tortor risus.Nulla porttitor accumsan tincidunt.</p>
						</div>
					</li>
                    <li>
                        <div class="banner-bottom-info">
                            <h3>asdfasdfasdf</h3>
                            <p>asdfadsfasdfffffffadfssssssssssssss</p>
                        </div>
                    </li>
				</ul>
			</div>
			<div class="port">
				<a href="#gallery" class="scroll">See Gallery</a>
			</div>
	</div>
	</div>
<!-- //banner-bottom -->
<!-- about -->
	<div id="about" class="about">
	<div class="container">
		<h3>关于我们</h3>
		<p class="para">Curabitur aliquet quam id dui posuere blandit.
			<span>Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</span></p>
		<div class="about-grids">
<!-- Slider-starts-Here -->		
				<script src="js/responsiveslides.min.js"></script>
				 <script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				      // Slideshow 4
				      $("#slider2").responsiveSlides({
				        auto: true,
				        pager: false,
				        nav: false,
				        speed: 500,
				        namespace: "callbacks",
				        before: function () {
				          $('.events').append("<li>before event fired.</li>");
				        },
				        after: function () {
				          $('.events').append("<li>after event fired.</li>");
				        }
				      });
				
				    });
				  </script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider2">
					<li>
						<div class="about-grids">
							<div class="about-grid">
								<a href="#small-dialog" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/2.jpg" class="img-responsive" />
									<h4>Tempus convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog1" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/1.jpg" class="img-responsive" />
									<h4>Tempus convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog2" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/3.jpg" class="img-responsive" />
									<h4>Tempus convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="about-grids">
							<div class="about-grid">
								<a href="#small-dialog3" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/3.jpg" class="img-responsive" />
									<h4>Nulla convallis quis lactus porttitor</h4>
								</a>
								
									<p>Quam porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog4" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/2.jpg" class="img-responsive" />
									<h4>Aliquet convallis quis lactus porttitor</h4>
								</a>
								
									<p>Dui porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog5" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/1.jpg" class="img-responsive" />
									<h4>Posuere convallis quis lactus porttitor</h4>
								</a>
								
									<p>Quis porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="about-grids">
							<div class="about-grid">
								<a href="#small-dialog6" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/1.jpg" class="img-responsive" />
									<h4>Risus convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog7" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/2.jpg" class="img-responsive" />
									<h4>Tortor convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="about-grid">
								<a href="#small-dialog8" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
									<img src="images/3.jpg" class="img-responsive" />
									<h4>Porttitor convallis quis lactus porttitor</h4>
								</a>
								
									<p>Sed porttitor lactus nibh.Proin
										eget tortor risus.Nulla porttitor accumsan tincidunt.Nulla
										porttitoraccumsan tincidunt.
										Curabitur aliquet quam id dui posuere blandit.
										Nulla Quis lorum nisl tempus convallis quis ac lactus porttitor accumsan tincidunt.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
				</ul>
			</div>
		<!-- pop-up-box -->
					<!-- script for pop-up-box -->
					<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!-- //script for pop-up-box -->
						<div id="small-dialog" class="mfp-hide">
							<div class="image-top">
								<img src="images/2-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog1" class="mfp-hide">
							<div class="image-top">
								<img src="images/1-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog2" class="mfp-hide">
							<div class="image-top">
								<img src="images/3-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog3" class="mfp-hide">
							<div class="image-top">
								<img src="images/3-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog4" class="mfp-hide">
							<div class="image-top">
								<img src="images/2-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog5" class="mfp-hide">
							<div class="image-top">
								<img src="images/1-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog6" class="mfp-hide">
							<div class="image-top">
								<img src="images/1-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog7" class="mfp-hide">
							<div class="image-top">
								<img src="images/2-.jpg" alt="" />
							</div>
						</div>
						<div id="small-dialog8" class="mfp-hide">
							<div class="image-top">
								<img src="images/3-.jpg" alt="" />
							</div>
						</div>
			<!-- pop-up-box -->
			<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
			</script>
		<!-- //pop-up-box -->
			<!---- Script Here --->
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						
						var filterList = {
						
							init: function () {
							
								// MixItUp plugin
								// http://mixitup.io
								$('#portfoliolist').mixitup({
									targetSelector: '.portfolio',
									filterSelector: '.filter',
									effects: ['fade'],
									easing: 'snap',
									// call the hover effect
									onMixEnd: filterList.hoverEffect()
								});				
							
							},
							
							hoverEffect: function () {
							
								// Simple parallax effect
								$('#portfoliolist .portfolio').hover(
									function () {
										$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
										$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
									},
									function () {
										$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
										$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
									}		
								);				
							
							}
				
						};
						
						// Run the show!
						filterList.init();
						
						
					});	
					</script>
		</div>
	</div>
	</div>
<!-- //about -->
<!-- pricing -->
<!-- 
    	<div id="pricing" class="pricing">
	<div class="container">
		<div class="price">
			<h3>PRICING</h3>
			<p class="para">Curabitur aliquet quam id dui posuere blandit.
			<span>Nulla Quis lorum nisl tempus convallis quis ac lactus
			porttitor accumsan tincidunt.</span></p>
		</div>
		<div class="basic">
			<div class="business">
				<h2>Basic</h2>
				<p>Best for small business</p>
			</div>
			<div class="value">
				<p>19,99$</p>
			</div>
			<ul>
				<li><span>50</span> Projects</li>
				<li><span>20</span> Files</li>
				<li><span>Full</span> Support</li>
				<li class="gd"><span>24h</span> Ready</li>
			</ul>
			<div class="buy-me">
				<a href="#">Buy Me</a>
			</div>
		</div>
		<div class="basic basic-mid">
			<div class="business">
				<h2>Premium</h2>
				<p>Best for medium business</p>
			</div>
			<div class="value">
				<p>49,99$</p>
			</div>
			<ul>
				<li><span>50</span> Projects</li>
				<li><span>20</span> Files</li>
				<li><span>Full</span> Support</li>
				<li class="gd"><span>24h</span> Ready</li>
			</ul>
			<div class="buy-me">
				<a href="#">Buy Me</a>
			</div>
		</div>
		<div class="basic">
			<div class="business">
				<h2>Deluxe</h2>
				<p>Best for big business</p>
			</div>
			<div class="value">
				<p>99,99$</p>
			</div>
			<ul>
				<li><span>50</span> Projects</li>
				<li><span>20</span> Files</li>
				<li><span>Full</span> Support</li>
				<li class="gd"><span>24h</span> Ready</li>
			</ul>
			<div class="buy-me">
				<a href="#">Buy Me</a>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
 -->
<!-- //pricing -->
<!-- gallery -->
	<div id="products" class="portfolio">
	<div class="container">
<!-- Portfolio Starts Here -->
	<div class="portfolios entertain_box  wow fadeInUp" data-wow-delay="0.4s" id="project">
			<div class="portfolio-info">
				<h3>GALLERY</h3>
				<p class="para">Curabitur aliquet quam id dui posuere blandit.
					<span>Nulla Quis lorum nisl tempus convallis quis ac lactus
					porttitor accumsan tincidunt.</span></p>
				<div class="strip"> </div>
			</div>
					<%--<ul id="filters" class="clearfix">
							<li><span class="filter active" data-filter="app card icon web">ALL</span></li>
							<li><span class="filter" data-filter="app">SEEDS</span></li>
							<li><span class="filter" data-filter="card">CROPING</span></li>
							<li><span class="filter" data-filter="icon">DEVELOPMENT</span></li>
					</ul>--%>
		
					<div id="portfoliolist">
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-1.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="images/s-11.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
								</h2>
								</div></a>
							</div>
						</div>				
						<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-2.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="images/s-22.jpg" />
								<div class="b-wrapper">
									<h2 class="b-animate b-from-left    b-delay03 ">
										<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
									</h2>
								</div></a>
							</div>
						</div>		
						<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-3.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="images/s-33.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
								</h2>
								</div></a>
							</div>
						</div>				
						<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-4.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="images/s-44.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
								</h2>					
								</div></a>
							</div>
						</div>	
						<div class="portfolio web mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-5.jpg" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img class="img-responsive" src="images/s-55.jpg" />
								<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
								</h2>						
								</div></a>
							</div>
						</div>			
						<div class="portfolio web mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">		
								<a href="images/s-6.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
								<img class="img-responsive" src="images/s-66.jpg" />
								<div class="b-wrapper">
									<h2 class="b-animate b-from-left    b-delay03 ">
										<img class="img-responsive" src="images/plus.png" class="zoom" alt=""/>
									</h2>					
								</div></a>							
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
		
	</div>
			<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>
				<!-- Portfolio Ends Here -->
				<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
					$(function () {
						var filterList = {
							init: function () {
								// MixItUp plugin
							// http://mixitup.io
							$('#portfoliolist').mixitup({
								targetSelector: '.portfolio',
								filterSelector: '.filter',
								effects: ['fade'],
								easing: 'snap',
								// call the hover effect
								onMixEnd: filterList.hoverEffect()
							});	
						},
						hoverEffect: function () {
							// Simple parallax effect
							$('#portfoliolist .portfolio').hover(
								function () {
									$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
									$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
								},
								function () {
									$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
									$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
								}		
							);				
						}
					};
					// Run the show!
						filterList.init();
					});	
					</script>
	</div>
	</div>
<!-- //gallery -->
<!-- contact -->
	<div id="contact" class="contact">
	<div class="container">
		<h3>留言</h3>
		<p class="para">电话:011-123456789
			<span>Email:464654@163.com</span>
            <span>地址:广东省四会市</span>
		</p>
		<%--<div class="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d315198.42131784896!2d5.849972999999987!3d51.888564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c7a7e5143e7afb%3A0xb21ce1ae282c4483!2sBarenbrug+Holland+B.V.!5e0!3m2!1sen!2sin!4v1427362466033" frameborder="0" style="border:0"></iframe>
		</div>--%>
		<div class="contact-contact">
			<form method="post" action="index.aspx">
				<input type="text" name="name" placeholder="姓名" required>
				<input type="email" name="email" placeholder="E-mail" required>
				<input type="text" name="phone" placeholder="电话" required>
				<textarea placeholder="内容" name="content" required></textarea>
				<input type="submit" value="提交留言">
			</form>
		</div>
	</div>
	</div>
<!-- //contact -->
<!-- footer -->
	<div class="footer">
	<div class="container">
		<div class="temp">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
		<div class="footer-icons">
			<ul>
				<li><a href="#" class="facebook"> </a></li>
				<li><a href="#" class="twitter"> </a></li>
				<li><a href="#" class="dribble"> </a></li>
				<li><a href="#" class="g-plus"> </a></li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	</div>
<!-- //footer -->
      <div id="rightArrow" class="open-im">&nbsp;</div>
    
        <div id="floatDivBoxs">
            <div class="floatDtt">在线客服</div>
            <div class="floatShadow">
                <ul class="floatDqq">
                    <%
                        foreach (KeyValuePair<string, string> item in qqList)
                        {
                            if (item.Key.Split('-').Length > 0)
                            {
                    %>
                    <li><a target="_blank" href="tencent://message/?uin=<%= item.Key.Split('-')[0] %>&Site=sc.chinaz.com&Menu=yes">
                        <img src="/assets/customerservice/images/qq.png" align="absmiddle"><%= item.Value %></a></li>
                    <%}
                        }
                    %>
                </ul>
                <div class="floatDtxt">热线电话</div>
                <div class="floatDtel">
                    <ul class="floatDphone">
                        <%
                            for (int i = 0; i < phoneList.Count; i++)
                            {%>
                        <li><a href="javascript:;">
                            <img src="/assets/customerservice/images/phone.png" align="absmiddle">
                            <%= phoneList[i] %> </a></li>
                        <%}
                        %>
                    </ul>
                    <div class="floatImg">
                          <img src="/assets/customerservice/images/erweima.jpg" width="100%">微信公众账号
                    </div>
                </div>
                <div class="floatDbg"></div>
            </div>
        </div>
    <div class="lanrenzhijia_m" id="lanrenzhijia_m">
        <ul>
            <a href="javascript:;" class="close" name="close"></a>
            <a href="tencent://message/?uin=639083793&Site=sc.chinaz.com&Menu=yes" target="_blank" style="left: 145px;"></a>
            <a href="javascript:;" name="close" style="left: 235px;"></a>
        </ul>
    </div>

<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

	        $().UItoTop({ easingType: 'easeOutQuart' });
	        $('#lanrenzhijia_m').delay(3000).slideDown();
	        $('a[name=close]').click(function () {
	            $('#lanrenzhijia_m').slideUp();
	            $('#lanrenzhijia_m').delay(5000).slideDown();
	        });

	        var flag = 0;
	        $('#rightArrow').on("click", function () {
	            if (flag == 1) {
	                $("#floatDivBoxs").animate({ right: '-175px' }, 300);
	                $(this).animate({ right: '-5px' }, 300);
	                $(this).css('background-position', '0px 0');
	                flag = 0;
	            } else {
	                $("#floatDivBoxs").animate({ right: '0' }, 300);
	                $(this).animate({ right: '170px' }, 300);
	                $(this).css('background-position', '0px 0');
	                flag = 1;
	            }
	        });
	    });
	</script>
       
<!-- //here ends scrolling icon -->
</body>
</html>