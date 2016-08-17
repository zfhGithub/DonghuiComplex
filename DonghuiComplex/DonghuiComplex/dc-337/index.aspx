<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DonghuiComplex.dc_337.index" %>

<!DOCTYPE HTML>
<html>
<head>
<title>地产</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!--Custom-Theme-files-->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/time.css" rel='stylesheet' type='text/css' />	

             <link href="/assets/customerservice/customer-service.css" rel="stylesheet" />
        <link href="/assets/customerservice/lanren.css" rel="stylesheet" />
    	
<!--/script-->
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all" />
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!-- Add fancyBox main JS and CSS files -->
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
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

</head>
<body>
<!--start-home-->
   <div class="header" id="home">
     <div class="container">
      <div class="header-top">
	       	<div class="logo">
                    <a href="index.aspx"><h1>地产</h1> </a>
			 </div>	
				    <div class="top-menu">
					    <span class="menu"> </span>
						<ul class="cl-effect-7">
								<li><a class="scroll" class="active" href="index.aspx">首页</a></li>
								<%--<li><a class="scroll" href="#latest">Latest Hats</a></li>--%>
								<li><a class="scroll" href="#services">服务</a></li>
								<li><a class="scroll" href="#gallery">楼盘</a></li>
                                <li><a class="scroll" href="#team">团队</a></li>
								<li><a class="scroll" href="#team">新闻</a></li>
								<li><a class="scroll" href="#contact">留言</a></li>
							</ul>
				</div>
                <!-- script-for-menu -->
								<script>
									$("span.menu").click(function(){
										$(".top-menu ul").slideToggle("slow" , function(){
										});
									});
								</script>

			<div class="clearfix"></div>
	<!--End-top-nav-script-->
	 </div>
	 </div>
<!--/start-banner-->
     <div class="banner">
	       <div class="banner-inner">
						<div class="callbacks_container">
						<ul class="rslides callbacks callbacks1" id="slider4">
							 <li>
							   
								<div class="banner-info hexagon_box">
								<h3>Stay in <span>Fashion</span></h3>
								<p>Lorem ipsum dolor sit amet</p>
								</div>	
								
							</li>
							<li>
							   
								<div class="banner-info hexagon_box">
								<h3>lives in <span>Fashion</span></h3>
								<p>Lorem ipsum dolor sit amet</p>
								</div>	
								
							</li>
							<li>
							   
								<div class="banner-info hexagon_box">
								<h3>Stay in <span>Fashion</span></h3>
								<p>Lorem ipsum dolor sit amet</p>
								</div>	
								
							</li>
						   </ul>
						</div>
						<!--banner-Slider-->
						<script src="js/responsiveslides.min.js"></script>
						 <script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
						auto: true,
						pager: true,
						nav:false,
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
				</div>
	</div>
 </div>
    <!--//end-banner-->
  <!--/latest-->
   <!-- 
  	   <div class="latest" id="latest">
	       <div class="container">
		        <h3 class="tittle">Latest Hats</h3>
		             <p class="top-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent,Nulla et finibus libero. Suspendisse vitae ex facilisis, ultricies est sed, porta ante. Vivamus tristique luctus lorem, eget dignissim lacus sodales tristique.<p>
                   <div class="lats">
				     <div class="col-md-6 serve">
					<figure class="effect-moses">
						<img src="images/l1.jpg" alt="img20"/>
						<figcaption>
							<h4>Cute <span>Hats</span></h4>
							<p>Moses loves to run after butterflies.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<p class="ser-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>

					</div>
					<div class="col-md-6 serve">
					<figure class="effect-moses">
						<img src="images/l2.jpg" alt="img20"/>
						<figcaption>
							<h4>Cute <span>Hats</span></h4>
							<p>Moses loves to run after butterflies.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<p class="ser-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>

					</div>
					<div class="clearfix"></div>

				</div>
			</div>
	</div>
	-->
    <!--/services-->
	  <div class="services" id="services">
	      <div class="container">
		   <h3 class="tittle">我们的服务</h3>
		      <div class="serve-top">
				 <div class="col-md-6 serve-icons">
					<div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-globe"></i>
						</div>
						<div class="col-md-10 serve-text">
						 <h4> Duis quis risus </h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus. </p>
						</div>
					     <div class="clearfix"> </div>	
					 </div>
					 <div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-send"></i>
						</div>
						<div class="col-md-10 serve-text">
					     <h4> Duis quis risus </h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus.</p>
						</div>
					     <div class="clearfix"> </div>	
					 </div>
					 <div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="col-md-10 serve-text">
						 <h4> Duis quis risus </h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus.</p>
						</div>
					     <div class="clearfix"> </div>	
					 </div>
				 </div>
				 <div class="col-md-6 serve-icons">
					<div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-screenshot"></i>
						</div>
						<div class="col-md-10 serve-text">
						  <h4>Lorem ipsum dolor</h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus. </p>
						</div>
					     <div class="clearfix"> </div>	
					 </div>
					 <div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-edit"></i>
						</div>
						<div class="col-md-10 serve-text">
						  <h4>Lorem ipsum dolor</h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus.</p>
						</div>
					     <div class="clearfix"> </div>	
					 </div><div class="s-sub">
						<div class="col-md-2 icon">
						  <i class="glyphicon glyphicon-certificate"></i>
						</div>
						<div class="col-md-10 serve-text">
						  <h4>Lorem ipsum dolor</h4>
						 <p> Duis quis risus a nunc ultricies varius. Aenean aliquam pellentesque magna consectetur hendrerit. Cum sociis natoque penatibus.</p>
						</div>
					     <div class="clearfix"> </div>	
					 </div>
				 </div>
				 <div class="clearfix"> </div>		
	          </div>	
	      </div>	
	  </div>
 <!--team-starts-->
	<div class="staff" id="team">
      <div class="container">
	      <h3 class="tittle">我们的团队</h3>
		  <div class="team">
           <div class="col-md-3 staff2">
        	<div class="view view-fifth">
                <div class="mask1"><img src="images/t3.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog2"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog2" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t3.jpg" class="img-responsive" alt=""/>
								     <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	  <h3><a href="#">Jessi</a></h3>
        	      <p>Lorem ipsum dolor sit amet. Integer gravida velit quis dolor tristiqumsan.</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
          </div>
        </div>
        <div class="col-md-3 staff2">
        	<div class="view view-fifth">
                <div class="mask1"><img src="images/t1.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog1" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t1.jpg" class="img-responsive" alt=""/>
								     <h3>About</h3>
							   	  <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
							 </div>
					</div>
        	 <h3><a href="#">Amanda Doe</a></h3>
        	      <p>Lorem ipsum dolor sit amet Integer gravida velit quis dolor tristiqumsan.</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
          </div>
        </div>
        <div class="col-md-3 staff2">
        	<div class="view view-fifth">
                <div class="mask1"><img src="images/t2.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog2"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog2" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t2.jpg" class="img-responsive" alt=""/>
								     <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	  <h3><a href="#">Jenny</a></h3>
        	      <p>Lorem ipsum dolor sit amet Integer gravida velit quis dolor tristiqumsan.</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
          </div>
        </div>
        <div class="col-md-3 staff2">
        	<div class="view view-fifth">
                <div class="mask1"><img src="images/t4.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog3"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog3" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t4.jpg" class="img-responsive" alt=""/>
								   <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	       <h3><a href="#">Lilly</a></h3>
        	      <p>Lorem ipsum dolor sit amet Integer gravida velit quis dolor tristiqumsan.</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
             </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
</div>
 <!--//team-->
 <!--gallery-section-->
  <div class="gallery-section" id="gallery">
      <div class="container">
	    <h3 class="tittle">Our Gallery</h3>
         <div class="categorie-grids cs-style-1">
				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/s1.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s1.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/s2.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s2.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>


				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/s3.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s3.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/s4.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s4.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/s5.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s5.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/s6.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s6.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 	<div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/time1.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/time1.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/s7.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/s7.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>


				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/time.jpg" alt="">
						<figcaption>
							<h3>My hat</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/time.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
               <script src="js/lightbox.js"></script>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
  <!--team-starts-->
   <!--
	<div class="testimonials" id="testimonial">
	   <div class="col-md-6 test-text">
	       <h3 class="tittle con">Testimonial</h3>
			<h4>Hat Lovers says</h4>
			<p>Nulla et finibus libero.Nulla et finibus libero. Suspendisse vitae ex facilisis, ultricies est sed, porta ante. Vivamus tristique luctus lorem, eget dignissim lacus sodales tristique. Suspendisse vitae ex facilisis, ultricies est sed, porta ante. Vivamus tristique luctus lorem, eget dignissim lacus sodales tristique.</p>
	   </div>
	   <div class="col-md-6 test-slide">
	      <div class="testimonial-content">
			    <p> <img src="images/quote.png" class="img-responsive" alt="">Fusce feugiat malesuada odio orbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna onece accumsan malesuada orci. <img src="images/quote1.png" class="img-responsive" alt=""> </p>
			 
					<div  class="callbacks_container">
					<ul class="rslides" id="slider3">
					          <li>
								 <div  class="test"> <img src="images/t1.jpg" class="img-responsive" alt=""><h5>Sarah Norton</h5></div>
							   </li>
							<li>
								  <div  class="test">  <img src="images/t3.jpg" class="img-responsive" alt=""><h5>Frank Miller</h5></div>							
							</li>
							<li>
								   <div  class="test"> <img src="images/t4.jpg" class="img-responsive" alt=""><h5>Laura Green</h5></div>
	
							</li>
						</ul>
					</div>
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 3
			      $("#slider3").responsiveSlides({
			        auto: true,
			        pager:false,
			        nav:true,
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
	           </div>
		    </div>
			<div class="clearfix"></div>
	   </div>
 -->
    <!--//news-->
	   <div class="news" id="news">
	       <div class="container">
		   <h3 class="tittle">Our News</h3>
		   <section id="cd-timeline" class="cd-container">
		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-picture">
				<i class="glyphicon glyphicon-picture"></i>
			</div>

			<div class="cd-timeline-content">
				 <a href="#"> <img src="images/time1.jpg" alt=""/></a>
				<span class="cd-date">Sep 14 2015</span>
			</div> <!-- cd-time-line-content -->
		</div> 

		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-movie">
				<i class="glyphicon glyphicon-bullhorn"></i>
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h4><a href="#">Lorem ipsum dolor</a> </h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</p>
				<a href="#0" class="hvr-outline-out even">Read More</a>
				<span class="cd-date">Oct 18 2015</span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->

		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-picture">
					<i class="glyphicon glyphicon-map-marker"></i>
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<h4><a href="#">Lorem ipsum dolor</a> </h4>
				<p>Lorem ipsum dolor sit ameteriores voluptatibus dolorem ipsam quae rerum quis.rem voluptatum eveniet eligendi quis fugiat aliquam sunt similique aut adipisci.</p>
				<a href="#0" class="hvr-outline-out">Read More</a>
				<span class="cd-date">Jan 24</span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->
		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-location">
					<i class="glyphicon glyphicon-picture"></i>
			</div> <!-- cd-timeline-img -->

			<div class="cd-timeline-content">
				<a href="#"><img src="images/time.jpg" alt=""/></a>
				<span class="cd-date">Dec 02 2015</span>
			</div> <!-- cd-timeline-content -->
		</div> <!-- cd-timeline-block -->

	</section> <!-- cd-timeline -->
		  
			</div>
	  </div>
	<!--//news-->
	   
 <!--team-starts-->
	<div class="contact" id="contact">
		<div class="container">
			 <div class="contact-inner">
				  <div class="col-md-7 contact-text">
				      <h3 class="tittle con">联系我们</h3>
					   <div class="contact-text-inner">
					          <address>
								  <strong>我们的联系方式.</strong><br>
								  <abbr title="Phone">电话:</abbr> 123456789<br>
								  邮箱:1321354@qq.com<br>
								  地址;广东省四会市
								</address>
								<img src="images/contact.jpg" alt="img20"/>
								 <div class="lost-para">
							      <p>Fax : 123345456</p>
								  <p>Mobile : 0123345456</p>
								</div>
                      </div>
					 <%--  <div class="contact-text-inner">
					          <address>
								  <strong>Full Name</strong><br>
								  795 Folsom Ave, Suite 600<br>
								  San Francisco, CA 94107<br>
								  <a href="mailto:info@example.com">mail@example.com</a>
							   </address>
							   <img src="images/contact1.jpg" alt="img20"/>
							    <div class="lost-para">
							      <p>Fax : 123345456</p>
								  <p>Mobile : 0123345456</p>
								</div>
					   </div>--%>
					   <div class="clearfix"></div>
				  </div>
				  <div class="col-md-5 con-form">
				     <form action="index.aspx" method="post">
						<p class="your-para">姓名:</p>
						<input type="text" value="" name="name" placeholder="姓名" />
						<p class="your-para">Email:</p>
						<input type="email" value="" name="email" placeholder="Email" />
                         <p class="your-para">电话:</p>
						<input type="text" value="" name="phone" placeholder="电话" />
						<p class="your-para">内容:</p>
						<textarea cols="77" rows="6" name="content" placeholder="内容"></textarea>
						<div class="send">
							<input type="submit" value="提交" >
						</div>
					</form>

				  </div>
				  <div class="clearfix"></div>
			 </div>
			
		</div>
	</div>
   <!--/start-copyright-section-->
				<div class="copyright">
						  <p>Copyright &copy; 2016.Company name All rights reserved.</p>
					</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

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
<!--JS-->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
           <script type="text/javascript">
$(function() {
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

<!--//JS-->

</body>
</html>