<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DonghuiComplex.ym_257.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">

    <title>移民</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/animated-logo.min.css"><!-- Logo -->
    <link rel="stylesheet" href="css/our-team.css"> <!-- Resource style -->
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Js -->
    <script src="js/modernizr.js"></script> <!-- Modernizr -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
        <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->

              <link href="/assets/customerservice/customer-service.css" rel="stylesheet" />
    <link href="/assets/customerservice/lanren.css" rel="stylesheet" />
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
    <!-- /////////////////////////////////////////Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">移民</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#page-top">主页</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">团队</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#new">新闻</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">关于我们</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">服务</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">联系我们</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- Navigation -->
    <!-- /////////////////////////////////////////Header -->
    <header id="page-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="o-container">
                        <div class="c-slack">
                            <span class="c-slack__dot c-slack__dot--a"></span>
                            <span class="c-slack__dot c-slack__dot--b"></span>
                            <span class="c-slack__dot c-slack__dot--c"></span>
                            <span class="c-slack__dot c-slack__dot--d"></span>
                        </div>
                    </div>
                    <div class="intro-text">
                        <div class="intro-lead-in">欢迎来到这里!</div>
                        <div class="intro-heading">见到你很高兴</div>
                    </div>
                    <a class="btn btn-1 btn-sm" href="#about">关于我们</a>
                    <a class="btn btn-1 btn-sm" href="#services">我们的服务</a>
                </div>
            </div>
        </div>
    </header>
    <!-- Header -->
    <!-- /////////////////////////////////////////Content -->
    <div id="page-content" class="index-page">

        <!-- ////////////Content Box 01 -->
        <section id="team" class="box-content box-1">
            <div class="container">
                <div class="row heading">
                    <div class="col-lg-12">
                        <h2>我们的团队</h2>
                        <hr>
                        <div class="intro">我们有强大的服务团队,解除你的后顾之忧.</div>
                    </div>
                </div>
                <div class="row">
                    <%
                        for (int i = 0; i < myteamList.Rows.Count; i++)
                        {
                            %>
                       <div class="col-sm-3 box-item">
                        <div class="wrap-img">
                            <img src="<%= myteamList.Rows[i]["photo"].ToString() %>" />
                        </div>
                        <h3 class="blue" style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= myteamList.Rows[i]["id"] %>'"><%= myteamList.Rows[i]["title"].ToString() %></h3>
                        <p style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= myteamList.Rows[i]["id"] %>'">
                           <%= myteamList.Rows[i]["subtitle"].ToString() %>
                        </p>
                        <!--<button type="submit" class="btn btn-2 ">More</button>-->
                    </div>
                     <%
                        } %>
                 
                 
                </div>
            </div>
        </section>

        <!-- ////////////Content Box 02 -->
        <section id="new" class="box-content box-2 box-style">
            <div class="container">

                <div style="width: 50%; float: left;line-height:30px;">
                    <ul>
                        <%
                            for (int i = 0; i < newsList.Rows.Count; i=i+2)
                            {%>
                           <li>
                            <h5 style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= newsList.Rows[i]["id"] %>'"><%= (i+1)+"、" + newsList.Rows[i]["title"] %></h5>
                          </li>
                            <%} %> 
                    </ul>
                </div>
                <div style="width: 50%; float: left;line-height:30px;">
                    <ul style="font-size: 30px;">
                        <%
                            for (int i = 1; i < newsList.Rows.Count; i=i+2)
                            {%>
                          <li>
                            <h5 style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= newsList.Rows[i]["id"] %>'"><%= (i+1)+"、" + newsList.Rows[i]["title"] %></h5>
                        </li>
                            <%} %>
                      
                    </ul>
                 
                </div>
            </div>
        </section>

        <!-- ////////////Content Box 03 -->
        <section id="about" class="box-content box-3">
            <div class="container">
                <div class="row heading">
                    <div class="col-lg-12">
                        <h2>关于我们</h2>
                        <hr>
                        <div class="intro">我们有强大的团队和优质的服务.</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="timeline">
                            <%
                                for (int i = 0; i < aboutusList.Rows.Count; i++)
                                {
                                    string str = "";
                                    if (i % 4 == 0)
                                        str = "blue";
                                    if (i % 4 == 1)
                                        str = "timeline-inverted red";
                                    if (i % 4 == 2)
                                        str = "green";
                                    if (i % 4 == 3)
                                        str = "timeline-inverted yellow";
                                    %>
                              <li class="<%= str %>">
                                <div class="timeline-image">
                                    <img class="img-circle img-responsive" src="<%= aboutusList.Rows[i]["photo"].ToString() %>" alt="">
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading"> 
                                        <h4 class="subheading" style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= aboutusList.Rows[i]["id"] %>'"><%= aboutusList.Rows[i]["title"].ToString() %></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted" style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= aboutusList.Rows[i]["id"] %>'"><%= aboutusList.Rows[i]["subtitle"].ToString() %></p>
                                    </div>
                                </div>
                            </li>

                                <%}
                                 %> 
                          <%--  <li class="timeline-inverted ">
                                <div class="timeline-image">
                                    <h4>
                                        Be Part
                                        <br>Of Our
                                        <br>Story!
                                    </h4>
                                </div>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- ////////////Content Box 04 -->
        <section id="services" class="box-content box-4 box-style">
            <div class="clearfix">
                <div class="cd-testimonials-wrapper cd-container" >
              <%--      <div style="width:100%;border:2px solid pink;height:300px;text-align:center;margin:0 auto;">
                        <div style="border: 1px solid red; width: 200px; height: 300px; float: left;  ">
                        </div>
                        <div style="border: 1px solid red; width: 200px; height: 300px; float: left; ">
                        </div>
                        <div style="border: 1px solid red; width: 200px; height: 300px; float: left;  ">
                        </div>
                        <div style="border: 1px solid red; width: 200px; height: 300px; float: left;  ">
                        </div>
                    </div>--%>
                   <ul class="cd-testimonials">
                       <%
                           for (int i = 0; i < servicesList.Rows.Count; i++)
                           {%>
                          <li>  
                            <div class="cd-author">
                                <img src="<%= servicesList.Rows[i]["photo"].ToString() %>" alt="Author image" style="width:150px;height:150px;">
                                <ul class="cd-author-info">
                                    <li style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= servicesList.Rows[i]["id"] %>'"><%= servicesList.Rows[i]["title"].ToString() %></li>
                                    <li style="cursor:pointer;" onclick="window.location.href='../News.aspx?id=<%= servicesList.Rows[i]["id"] %>'"><%= servicesList.Rows[i]["subtitle"].ToString() %></li>
                                </ul>
                            </div>
                         <%--   <p><%= servicesList.Rows[i]["content"].ToString() %></p>--%>
                        </li>
                           <%}
                            %>
                     
                       
                    </ul>  <!-- cd-testimonials -->
                </div> <!-- cd-testimonials-wrapper -->
             <%--  <div class="cd-see-all"><a href="#0" class="btn btn-1">See all</a></div> --%>

                <div class="cd-testimonials-all">
                    <div class="cd-testimonials-all-wrapper">
                        <ul>
                            <li class="cd-testimonials-item">
                                  <div class="cd-author">
                                    <img src="images/avatar-1.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyNam11e</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit totam saepe iste maiores neque animi molestias nihil illum nisi temporibus.</p> 
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore nostrum nisi, doloremque error hic nam nemo doloribus porro impedit perferendis. Tempora, distinctio hic suscipit. At ullam eaque atque recusandae modi fugiat voluptatem laborum laboriosam rerum, consequatur reprehenderit omnis, enim pariatur nam, quidem, quas vel reiciendis aspernatur consequuntur. Commodi quasi enim, nisi alias fugit architecto, doloremque, eligendi quam autem exercitationem consectetur.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-2.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem quibusdam eveniet, molestiae laborum voluptatibus minima hic quasi accusamus ut facere, eius expedita, voluptatem? Repellat incidunt veniam quaerat, qui laboriosam dicta. Quidem ducimus laudantium dolorum enim qui at ipsum, a error.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-3.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero voluptates officiis tempore quae officia! Beatae quia deleniti cum corporis eos perferendis libero reiciendis nemo iusto accusamus, debitis tempora voluptas praesentium repudiandae laboriosam excepturi laborum, nisi optio repellat explicabo, incidunt ex numquam. Ullam perferendis officiis harum doloribus quae corrupti minima quia, aliquam nostrum expedita pariatur maxime repellat, voluptas sunt unde, inventore.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-4.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit totam saepe iste maiores neque animi molestias nihil illum nisi temporibus.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-5.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis quia quas, quis illo adipisci voluptate ex harum iste commodi nulla dolor. Eius ratione quod ab!</p>

                                <div class="cd-author">
                                    <img src="images/avatar-6.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur, dignissimos iure rem fugiat consequuntur officiis.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-1.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At temporibus tempora necessitatibus reiciendis provident deserunt maxime sit id. Dicta aut voluptatibus placeat quibusdam vel, dolore.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-2.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis iusto sapiente, excepturi velit, beatae possimus est tenetur cumque fugit tempore dolore fugiat! Recusandae, vel suscipit? Perspiciatis non similique sint suscipit officia illo, accusamus dolorum, voluptate vitae quia ea amet optio magni voluptatem nemo, natus nihil.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-3.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor quasi officiis pariatur, fugit minus omnis animi ut assumenda quod commodi, ad a alias maxime unde suscipit magnam, voluptas laboriosam ipsam quibusdam quidem, dolorem deleniti id.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-4.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At temporibus tempora necessitatibus reiciendis provident deserunt maxime sit id. Dicta aut voluptatibus placeat quibusdam vel, dolore.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-5.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                            <li class="cd-testimonials-item">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque tempore ipsam, eos suscipit nostrum molestias reprehenderit, rerum amet cum similique a, ipsum soluta delectus explicabo nihil repellat incidunt! Minima magni possimus mollitia deserunt facere, tempore earum modi, ea ipsa dicta temporibus suscipit quidem ut quibusdam vero voluptatibus nostrum excepturi explicabo nulla harum, molestiae alias. Ab, quidem rem fugit delectus quod.</p>

                                <div class="cd-author">
                                    <img src="images/avatar-6.jpg" alt="Author image">
                                    <ul class="cd-author-info">
                                        <li>MyName</li>
                                        <li>CEO, CompanyName</li>
                                    </ul>
                                </div> <!-- cd-author -->
                            </li>
                        </ul>
                    </div>	<!-- cd-testimonials-all-wrapper -->
                    <a href="#0" class="close-btn">Close</a>
                </div> <!-- cd-testimonials-all -->
            </div>
        </section>

        <!-- ////////////Content Box 05 -->
        <section class="box-content box-5" id="contact">
            <div class="container">
                <div class="row heading">
                    <div class="col-lg-12">
                        <h2>联系我们</h2>
                        <hr>
                        <div class="intro">我们将以最快的速度联系你</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 ">
                        <div class="row box-item">
                            <h3>请输入有效信息</h3>
                            <!--<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>-->
                            <h3>或者主动联系我们</h3>
                            <p>
                                +6221 888 888 90 <br>
                                +6221 888 88891
                            </p>
                            <p>info@yourdomain.com</p>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div id="contact-form">
                            <form name="form1" method="post" action="index.aspx">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="name" id="name" placeholder="请输入姓名" required="required" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control input-lg" name="email" id="email" placeholder="请输入Email" required="required" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="phone" id="phone" placeholder="请输入你的电话" required="required" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea name="message" id="message" class="form-control" rows="4" cols="25" required
                                                      placeholder="输入你要说的话"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-3 btn-block" name="btnContactUs" id="btnContactUs">
                                            提交
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- /////////////////////////////////////////Footer -->
    <footer>
        <div class="wrap-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-footer footer-1">
                        <div class="heading"><h4>关于我们</h4></div>
                        <div class="content">
                            <p>3年前，侨外和美国移民基金，Durst一起，推出了W57和EB-5项目，获得了巨大的成功，W57在当时创造了拉屎的减肥. </p>
                            <p>阿斯顿发送到发生地方阿士大夫撒旦发生地方阿萨德发士大夫阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发士大夫撒旦法定飞</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-footer footer-2">
                        <!--<div class="heading"><h4>Your Email</h4></div>
                        <div class="content">
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consectetuer adipiscing elit, dolore magna aliquam erat volutpat. </p>
                            <div class="subcribe-form" >
                                <form method="get" action="/search" id="subcribe">
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="subcribe" placeholder="Enter your email address...  " required="required" />
                                    </div>
                                    <button type="submit" name="Submit" class="btn btn-4 f-left">Subcribe</button>
                                </form>
                            </div>
                        </div>-->
                    </div>
                    <div class="col-md-4 col-footer footer-3">
                        <div class="heading"><h4>友情链接</h4></div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="#"><img src="images/15.jpg" /></a>
                            </div>
                            <div class="col-md-6">
                                <a href="#"><img src="images/16.jpg" /></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <a href="#"><img src="images/17.jpg" /></a>
                            </div>
                            <div class="col-md-6">
                                <a href="#"><img src="images/18.jpg" /></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!--<p>Copyright &copy; 2015.Company name All rights reserved.</p>-->
                    </div>
                    <div class="col-md-4">
                        <!--<ul class="list-inline">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-google"></i></a>
                            </li>
                        </ul>-->
                    </div>
                    <div class="col-md-4">
                        <!--<ul class="list-inline">
                            <li><a href="#">Privacy Policy</a>
                            </li>
                            <li><a href="#">Terms of Use</a>
                            </li>
                        </ul>-->
                    </div>
                </div>
            </div>
        </div>
    </footer>
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

    <!-- jQuery -->
    <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/main.js"></script> <!-- Resource jQuery -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>

    <!-- Animated Top -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>
        <script type="text/javascript">
$(function() {
    $('#lanrenzhijia_m').delay(3000).slideDown();
    $('a[name=close]').click(function () {
        $('#lanrenzhijia_m').slideUp();
        $('#lanrenzhijia_m').delay(10000).slideDown();
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
</body>
</html>