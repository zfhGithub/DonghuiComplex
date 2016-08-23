<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DonghuiComplex.ly_300.index" %>

<!DOCTYPE html>
<html>
<head>
<title>旅游</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<!-- css links -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/caption-hover.css" />
<link rel="stylesheet" type="text/css" href="css/circle-hover.css" />
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
        
        <link href="/assets/customerservice/customer-service.css" rel="stylesheet" />
        <link href="/assets/customerservice/lanren.css" rel="stylesheet" />

<!-- /css links -->
<link href='http://fonts.useso.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script> 
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#myPage">旅游</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#myPage">首页</a></li>
                <li><a href="#scenicSpot">景点</a></li>
				<li><a href="#about">关于</a></li>
				<li><a href="#services">服务</a></li>
				<li><a href="#portfolio">现场</a></li>
				<li><a href="#contact">留言</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<!-- /Fixed navbar -->	
<!-- Banner -->
<div class="banner">
	<div id="content">
        <div id="slider">
             <%
                 for (int i = 0; i < bannerList.Rows.Count; i++)
                 {
                     %>
            	<img src="<%= bannerList.Rows[i]["photo"] %>" alt="<%= bannerList.Rows[i]["title"] %>" data-url="#<%= i +1 %>">
                 <%}
                  %>
		 
		</div>
	</div>	
</div>
<!-- /Banner -->
<!-- About -->
<section class="about-us" id="about">
	<h3 class="text-center slideanim"><%= aboutus.Rows[0]["title"].ToString() %></h3>
    <div class="container">
        <div class="row">
          <%--  <div class="col-lg-4 col-lg-offset-2 slideanim">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="col-lg-4 slideanim">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>--%>
            <%= aboutus.Rows[0]["content"].ToString() %>
        </div>
    </div>
</section>
    <section id="scenicSpot">
        <% for (int i = 0; i < jingdian.Rows.Count; i++)
            {
                string className = "content-section-a";
                string cn = "",cn1="col-lg-5 col-lg-offset-2 col-sm-6 slideanim";
                if (i == 0)
                    cn = "col-lg-5 col-sm-6";
                if (i == 1)
                {
                    cn = "col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6";
                    cn1 = "col-lg-5 col-sm-pull-6 col-sm-6 slideanim";
                }
                if (i == 2) 
                    cn = "col-lg-5 col-sm-6";
                if (i % 2 != 0)
                    className = "content-section-b";
                %>
        <div class="<%=className %>" >
	<div class="container">
		<div class="row">
            <div class="<%= cn %>">
				<div class="content<%= i+1 %>">
					<h3 class="section-heading slideanim"><%= jingdian.Rows[i]["title"] %></h3>
					<hr class="section-heading-spacer slideanim">
					<div class="clearfix"></div>
					<p class="lead slideanim"> <%= jingdian.Rows[i]["subtitle"] %></p>
				</div>
			</div>
            <div class="<%=cn1 %>">
                <ul class="grid cs-style">
					<li>
						<figure>
							<img src="<%= jingdian.Rows[i]["photo"] %>" alt="" class="img-responsive">
							<figcaption>
								<h3></h3>
								<p></p>
							</figcaption>
						</figure>
					</li>
				</ul> 
			</div>
        </div>
	</div>
</div>
            <%} %>
         
</section>

<!-- /About -->
<!-- /Services -->
<section class="our-services" id="services">
    <h3 class="text-center slideanim">我们的服务</h3>
	<ul class="ch-grid">
        <%
            for (int i = 0; i < services.Rows.Count; i++)
            {
                %>
        	<li>
			<div class="ch-item slideanim" style="background-image: url(<%=services.Rows[i]["photo"] %>)">				
				<div class="ch-info-wrap">
					<div class="ch-info">
						<div class="ch-info-front ch-img-1" style="background-image: url(<%=services.Rows[i]["photo"] %>)"></div>
						<div class="ch-info-back">
							<h5>  <%=services.Rows[i]["title"] %></h5>
							<p><%=services.Rows[i]["subtitle"] %></p>
						</div>	
					</div>
				</div>
			</div>
			<h4 class="slideanim" style="white-space:nowrap;"> <%=services.Rows[i]["title"] %> </h4>
			<p class="slideanim"> <%=services.Rows[i]["subtitle"] %></p>
		</li>
         <%
            }
            %>
	
	  
	<%--	<li>
			<div class="ch-item slideanim" style="background-image: url(images/service4.jpg)">
				<div class="ch-info-wrap">
					<div class="ch-info">
						<div class="ch-info-front ch-img-4"></div>
						<div class="ch-info-back">
							<h5>End Of Harvest</h5>
							<p>Advanced Harvesting Techniques</p>
						</div>
					</div>
				</div>
			</div>
			<h4 class="slideanim">End Of Harvest</h4>
			<p class="slideanim">Using Advanced Harvesting Techniques</p>
		</li>--%>
	</ul>
</section>
<!-- /Services -->
<!-- Portfolio Grid Section -->
<section id="portfolio">
	<h3 class="text-center slideanim">现场</h3>
    <div class="container">
        <div class="row">
            <%for (int i = 0; i < live.Rows.Count; i++)
                {
                    %>
                    <div class="col-md-4 col-sm-6 col-xs-12 portfolio-item slideanim">
                        <a href="#portfolioModal<%= i %>" class="portfolio-link" data-toggle="modal">
					        <div class="caption">
						        <div class="caption-content">
							        <i class="fa fa-paper-plane-o"></i>
						        </div>
					        </div>
					        <img src="<%= live.Rows[i]["photo"].ToString() %>" class="img-responsive" alt="" >
				        </a>
                    </div>
                <%}
                 %>
        
        </div>
    </div>
</section>
<!-- /Portfolio Grid Section -->
<!-- Portfolio Modals -->
    <%for (int i = 0; i < live.Rows.Count; i++)
        {
            %>
    
<div class="portfolio-modal modal fade slideanim" id="portfolioModal<%=i %>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3><%= live.Rows[i]["title"] %></h3>
						<hr>
                        <img src="images/port1.jpg" class="img-responsive img-centered" alt="">
                        <p><%= live.Rows[i]["content"] %></p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <%} %> 
<!-- /Portfolio Modals -->
<!-- Blog -->
<%--<section class="our-blog" id="blog">
	<h3 class="text-center slideanim">Our Blog</h3>
    <div class="container">
		<div class="row">
			<div class="col-md-3 col-xs-12">
				<div class="view view-seventh slideanim">
                    <img src="images/blog1.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5>January 2,2016</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<a href="#contact-info" class="info">Write To Us</a>
                    </div>
                </div>
				<div class="blog-content slideanim">
					<p class="p1">News - January 2,2016</p>
					<a href="#"><h4>Its The Vegetable Farm You Can See.</h4></a>
					<p class="p2">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			<div class="col-md-3 col-xs-12">
				<div class="view view-seventh slideanim">
                    <img src="images/blog2.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5>January 10,2016</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<a href="#contact-info" class="info">Write To Us</a>
                    </div>
                </div>
				<div class="blog-content slideanim">
					<p class="p1">News - January 10,2016</p>
					<a href="#"><h4>A Day With Vegetable Farm.</h4></a>
					<p class="p2">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			<div class="col-md-3 col-xs-12">
				<div class="view view-seventh slideanim">
                    <img src="images/blog3.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5>January 15,2016</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<a href="#contact-info" class="info">Write To Us</a>
                    </div>
                </div>
				<div class="blog-content slideanim">
					<p class="p1">News - January 15,2016</p>
					<a href="#"><h4>Vegetable Farm For All.</h4></a>
					<p class="p2">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			<div class="col-md-3 col-xs-12">
				<div class="view view-seventh slideanim">
                    <img src="images/blog4.jpg" alt="" class="img-responsive"/>
                    <div class="mask">
                        <h5>January 20,2016</h5>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<a href="#contact-info" class="info">Write To Us</a>
                    </div>
                </div>
				<div class="blog-content slideanim">
					<p class="p1">News - January 20,2016</p>
					<a href="#"><h4>Vegetable Farm For Your Life.</h4></a>
					<p class="p2">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
		</div>
	</div>
</section>--%>
<!-- /Blog -->
<!-- Contact-Us -->
<%--<section class="contact-us" id="contact">
	<h3 class="text-center slideanim">Contact Us</h2>
	<div class="container">
		<div class="row">
            <div class="col-md-8 col-xs-12 slideanim">
                <iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="col-md-4 col-xs-12 slideanim">
				<h4>Our Contacts :</h4>
                <p>Phone:123.456.7890</p>
                <p>Email:<a href="mailto:name@example.com">name@example.com</a></p>
                <p>Address:3481 Melrose Place,Beverly Hills, Chicago 90210.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>--%>
<!-- /Contact-Us -->
<!-- Contact-Form -->	
<section class="contact-form" id="contact">
	<h3 class="text-center slideanim">留言</h3>
	<p class="text-center slideanim">电话：123.13.123 <br />Email：123.13.123<br />地址：广东省四会市</p>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 slideanim">
				<form role="form" action="index.aspx" method="post">
					<div class="row">
						<div class="form-group col-lg-4">
							<label>姓名</label>
							<input type="text" class="form-control" name="name">
						</div>
						<div class="form-group col-lg-4">
							<label>Email</label>
							<input type="email" class="form-control" name="email">
						</div>
						<div class="form-group col-lg-4">
							<label>电话</label>
							<input type="tel" class="form-control" name="phone">
						</div>
						<div class="clearfix"></div>
						<div class="form-group col-lg-12">
							<label>内容</label>
							<textarea class="form-control" rows="6" name="content"></textarea>
						</div>
						<div class="form-group col-lg-12">
							<button type="submit" class="btn btn-lg btn-outline">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>	
<!-- /Contact-Form -->
<!-- Footer -->
 
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

<!-- js files -->
<script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/TweenMax.min.js"></script>
<script src="js/index.js"></script>
<script src="js/index2.js"></script>
<script>
    $(document).ready(function () {
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
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

  // Prevent default anchor click behavior
  event.preventDefault();

  // Store hash
  var hash = this.hash;

  // Using jQuery's animate() method to add smooth page scroll
  // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
  $('html, body').animate({
    scrollTop: $(hash).offset().top
  }, 900, function(){

    // Add hash (#) to URL when done scrolling (default click behavior)
    window.location.hash = hash;
    });
  });
})

</script>
      

<script>
$(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});
</script>
<!-- /js files -->
</body>
</html>