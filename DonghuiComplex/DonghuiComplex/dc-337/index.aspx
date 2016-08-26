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
                    <a href="index.aspx">
                        <h1>地产</h1>
                    </a>
                </div>
                <div class="top-menu">
                    <span class="menu"></span>
                    <ul class="cl-effect-7">
                        <li><a class="scroll" class="active" href="index.aspx">首页</a></li>
                        <%--<li><a class="scroll" href="#latest">Latest Hats</a></li>--%>
                        <li><a class="scroll" href="#services">服务</a></li>
                        <li><a class="scroll" href="#gallery">楼盘</a></li>
                        <li><a class="scroll" href="#team">团队</a></li>
                        <li><a class="scroll" href="#news">新闻</a></li>
                        <li><a class="scroll" href="#contact">留言</a></li>
                    </ul>
                </div>
                <!-- script-for-menu -->
                <script>
                    $("span.menu").click(function () {
                        $(".top-menu ul").slideToggle("slow", function () {
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
                        <%
                            for (int i = 0; i < bannerList.Rows.Count; i++)
                            {%>
                        <li>
                            <div class="banner-info hexagon_box">
                                <h3><%= bannerList.Rows[i]["title"] %></h3>
                                <p><%= bannerList.Rows[i]["subtitle"] %> </p>
                                <img src="<%= bannerList.Rows[i]["photo"] %>" style="visibility: hidden" />
                            </div>
                        </li>
                        <%}
                        %>
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
                            nav: false,
                            speed: 1000,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                               var isrc = $(".banner-inner .callbacks li.callbacks1_on img").attr("src");
                               $(".header").css("background", "url(" + isrc + ")no-repeat 0px 0px"); 
                            },
                            after: function () {
                                //alert("1");
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
                  <%
                      decimal count = Math.Ceiling(Convert.ToDecimal(servicesList.Rows.Count) / 3);
                      for (int i = 0; i < count; i++)
                      {
                          int jj = ((i + 1) * 3) > servicesList.Rows.Count ? servicesList.Rows.Count :((i + 1) * 3);
                         %>
                        <div class="col-md-6 serve-icons">
                            <% for (int j = i*3; j < jj; j++)
                                {%>
                            <div class="s-sub">
                                <div class="col-md-2 icon">
                                    <img src="<%= servicesList.Rows[j]["photo"] %>" style="width: 100px; height: 80px; margin-left: -25px;" />
                                </div>
                                <div class="col-md-10 serve-text" style="cursor:pointer" onclick="window.location.href='../News.aspx?id=<%= servicesList.Rows[i]["id"] %>'">
                                    <h4> <%= servicesList.Rows[j]["title"] %> </h4>
                                    <p> <%= servicesList.Rows[j]["subtitle"] %> </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                                <%} %>
                        </div>
                       <%
                      }

                  %>
               
                  <div class="clearfix"></div>
              </div>	
	      </div>	
	  </div>
 <!--team-starts-->
	<div class="staff" id="team">
      <div class="container">
	      <h3 class="tittle">我们的团队</h3>
          <div class="team">
              <% for (int i = 0; i < myteamList.Rows.Count; i++)
                  {%>
              <div class="col-md-3 staff2">
                  <div class="view view-fifth">
                      <div class="mask1">
                          <img src="<%= myteamList.Rows[i]["photo"] %>" alt="image" class="img-responsive zoom-img" />
                      </div>
                      <div class="mask">
                          <a class="popup-with-zoom-anim" href="#small-dialog<%=i+1 %>">
                              <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div>
                          </a>
                          <div id="small-dialog<%=i+1 %>" class="mfp-hide">
                              <div class="pop_up2">
                                  <img src="<%= myteamList.Rows[i]["photo"] %>" class="img-responsive" alt="1" />
                                  <h3 onclick="window.location.href='../News.aspx?id=<%=myteamList.Rows[i]["id"] %>'"><%= myteamList.Rows[i]["title"] %> </h3>
                                  <p class="popup_desc"><%= myteamList.Rows[i]["subtitle"] %></p>
                              </div>
                          </div>
                      </div>
                      <h3><a href="../News.aspx?id=<%= myteamList.Rows[i]["id"] %>"> <%= myteamList.Rows[i]["title"] %> </a></h3>
                      <p style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= myteamList.Rows[i]["id"] %>'">
                          <%= myteamList.Rows[i]["subtitle"] %></p>

                  </div>
              </div>
              <%} %>

           
              <div class="clearfix"></div>
          </div>
    </div>
</div>
 <!--//team-->
 <!--gallery-section-->
  <div class="gallery-section" id="gallery">
      <div class="container">
	    <h3 class="tittle">我们的资源</h3>
         <div class="categorie-grids cs-style-1">
             <%
                 for (int i = 0; i < propertyList.Rows.Count; i++)
                 {%>
             	 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="<%= propertyList.Rows[i]["photo"] %>" alt="">
						<figcaption>
							<h3><%= propertyList.Rows[i]["title"] %></h3>
							<span><%= propertyList.Rows[i]["subtitle"] %></span>
							<a title="点击查看详情" class="example-image-link" href="../News.aspx?id=<%= propertyList.Rows[i]["id"] %>" data-title="<%= propertyList.Rows[i]["title"] %>">查看</a>
						</figcaption>
					</figure>
				 </div>
			
                 <%}
                  %>
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
            
           <
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
 
 
    <!--//news-->
    <div class="news" id="news">
        <div class="container">
            <h3 class="tittle">新闻</h3>
            <section id="cd-timeline" class="cd-container" style="float: left;width:100%; height:auto; ">
                <%--  <div>
                    <div class="cd-timeline-content">
                        <h4><a href="#">Lorem ipsum dolor</a> </h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</p>
                        <a href="#0" class="hvr-outline-out even">Read More</a>
                      
                    </div>
                </div>--%>
                <div style="width: 49%; height: auto; float: left; line-height: 0px;">

                    <%for (int i = 0; i < newsList.Rows.Count; i = i + 2)
                        {%>
                    <div class="cd-timeline-block" style="width: 100%; margin-top: 0px;">
                        <!-- cd-timeline-img -->
                        <div class="cd-timeline-content" style="width: 100%; text-align: center;">
                            <img src="<%= newsList.Rows[i]["photo"] %>" style="width: 100px; height: 100px; position: absolute; top: 30px; left: 20px;" />
                            <h4 style="text-align: right"><a href="#"><%= newsList.Rows[i]["title"] %></a> </h4>
                            <p style="margin-left: 95px;text-align:right">
                                <%= newsList.Rows[i]["subtitle"] %>
                            </p>
                            <a href="../News.aspx?id=<%= newsList.Rows[i]["id"] %>" class="hvr-outline-out even">详情</a>
                        </div>
                        <!-- cd-timeline-content -->
                    </div>

                    <%}

                    %>
                </div>
                <div style="width: 49%; height: auto; float: right; line-height:0px; margin-right:0px;">
                    <%  for (int i = 1; i < newsList.Rows.Count; i = i + 2)
                        {%>

                    <div class="cd-timeline-block" style="width: 100%; margin-top: 0px;">
                        <!-- cd-timeline-img -->
                        <div class="cd-timeline-content" style="width: 100%; text-align: center;">
                            <img src="<%= newsList.Rows[i]["photo"] %>" style="width: 100px; height: 100px; position: absolute; top: 30px; left: 20px;" />
                            <h4 style="text-align: right"><a href="#"><%= newsList.Rows[i]["title"] %></a> </h4>
                            <p style="margin-left: 95px;text-align:right">
                                <%= newsList.Rows[i]["subtitle"] %>
                            </p>
                            <a href="../News.aspx?id=<%= newsList.Rows[i]["id"] %>" class="hvr-outline-out even">详情</a>
                        </div>
                        <!-- cd-timeline-content -->
                    </div>

                    <%}%>
                </div>

                 
            </section>
            <!-- cd-timeline -->

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
						<textarea cols="77" rows="6" name="message" placeholder="内容"></textarea>
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