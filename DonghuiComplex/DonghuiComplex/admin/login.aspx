﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DonghuiComplex.admin.login" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
    
    <script src="js/BJUI/js/jquery-1.7.2.min.js"></script>
<script src=" js/BJUI/js/jquery.cookie.js"></script>
<script src="js/js/sha256.js"></script>
<link href="js/BJUI/themes/css/bootstrap.min.css" rel="stylesheet">
 
<style type="text/css">
* {font-family: "Verdana", "Tahoma", "Lucida Grande", "Microsoft YaHei", "Hiragino Sans GB", sans-serif;}
body {
    background: url(js/images/loginbg_01.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover; 
}
a:link {color: #285e8e;}
.main_box {
    position: absolute; top:50%; left:50%; margin-top:-260px; margin-left: -300px; padding: 30px; width:600px; height:460px;
    background: #FAFAFA; background: rgba(255,255,255,0.5); border: 1px #DDD solid;
    border-radius: 5px;
    -webkit-box-shadow: 1px 5px 8px #888888; -moz-box-shadow: 1px 5px 8px #888888; box-shadow: 1px 5px 8px #888888;
}
.main_box .setting {position: absolute; top: 5px; right: 10px; width: 10px; height: 10px;}
.main_box .setting a {color: #FF6600;}
.main_box .setting a:hover {color: #555;}
.login_logo {margin-bottom: 20px; height: 45px; text-align: center;}
.login_logo img {height: 45px;}
.login_msg {text-align: center; font-size: 16px;}
.login_form {padding-top: 20px; font-size: 16px;}
.login_box .form-control {display: inline-block; *display: inline; zoom: 1; width: auto; font-size: 18px;}
.login_box .form-control.x319 {width: 319px;}
.login_box .form-control.x164 {width: 164px;}
.login_box .form-group {margin-bottom: 20px;}
.login_box .form-group label.t {width: 120px; text-align: right; cursor: pointer;}
.login_box .form-group.space {padding-top: 15px; border-top: 1px #FFF dotted;}
.login_box .form-group img {margin-top: 1px; height: 32px; vertical-align: top;}
.login_box .m {cursor: pointer;}
.bottom {text-align: center; font-size: 12px;}
</style>
<script type="text/javascript">
 
    var COOKIE_NAME = 'DonghuiComplexUserName';
    $(function () {
        choose_bg();
        //changeCode();
        if ($.cookie(COOKIE_NAME)) {
            $("#j_username").val($.cookie(COOKIE_NAME));
            $("#j_password").focus();
            $("#j_remember").attr('checked', true);
        } else {
            $("#j_username").focus();
        }
        /*$("#captcha_img").click(function(){
            changeCode();
        });*/
        $("#login_form").submit(function () {
            var issubmit = true;
            var i_index = 0;
            $(this).find('.in').each(function (i) {
                if ($.trim($(this).val()).length == 0) {
                    $(this).css('border', '1px #ff0000 solid');
                    issubmit = false;
                    if (i_index == 0)
                        i_index = i;
                }
            });
            if (!issubmit) {
                $(this).find('.in').eq(i_index).focus();
                return false;
            }
            var $remember = $("#j_remember");
            if ($remember.attr('checked')) {
                $.cookie(COOKIE_NAME, $("#j_username").val(), { path: '/', expires: 15 });
            } else {
                $.cookie(COOKIE_NAME, null, { path: '/' });  //删除cookie
            }
            $("#login_ok").attr("disabled", true).val('登陆中..'); 
            //var password = HMAC_SHA256_MAC($("#j_username").val(), $("#j_password").val());
           // var password = $.md5($("#j_password").val()); 
            // $("#j_password").val(HMAC_SHA256_MAC($("#j_randomKey").val(), password));
          //  $("#j_password").val(password); 
            return true;
        });
    });
    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    }
    function changeCode() {
        //$("#captcha_img").attr("src", "/captcha.jpeg?t="+genTimestamp());
    }
    function choose_bg() {
        var bg = Math.floor(Math.random() * 9 + 1);
        $('body').css('background-image', 'url(js/images/loginbg_0' + bg + '.jpg)');
    }
</script>
</head>
<body>
<!--[if lte IE 7]>
<style type="text/css">
#errorie {position: fixed; top: 0; z-index: 100000; height: 30px; background: #FCF8E3;}
#errorie div {width: 900px; margin: 0 auto; line-height: 30px; color: orange; font-size: 14px; text-align: center;}
#errorie div a {color: #459f79;font-size: 14px;}
#errorie div a:hover {text-decoration: underline;}
</style>
<div id="errorie"><div>您还在使用老掉牙的IE，请升级您的浏览器到 IE8以上版本 <a target="_blank" href="http://windows.microsoft.com/zh-cn/internet-explorer/ie-8-worldwide-languages">点击升级</a>&nbsp;&nbsp;强烈建议您更改换浏览器：<a href="http://down.tech.sina.com.cn/content/40975.html" target="_blank">谷歌 Chrome</a></div></div>
<![endif]-->
<div class="main_box">
    <div class="setting"><a href="javascript:;" onclick="choose_bg();" title="更换背景"><span class="glyphicon glyphicon-th-large"></span></a></div>
	<div class="login_box">
        <div class="login_logo">
            <img src="js/images/logo.png" >
        </div>
        <!--
		<c:if test="${!empty message}">
			<div class="login_msg">
	      		<font color="red">${message }</font>
	    	</div>
	    </c:if>
        -->
        <div class="login_form">
            <input type="hidden" value="${randomKey }" id="j_randomKey" />
    		<form action="login.aspx" id="login_form" method="post">
                <input type="hidden" name="jfinal_token" value="${jfinal_token }" />
                <asp:Label Text="errorMsg" Visible="false" runat="server" ID="txtErrorMsg" style="margin-left:180px;color:red;" />
    			<div class="form-group">
    				<label for="j_username" class="t">用户名：</label> <input id="j_username" value="" name="username" type="text" class="form-control x319 in" autocomplete="off">
    			</div>
    			<div class="form-group">
    				<label for="j_password" class="t">密　码：</label> <input id="j_password" value="" name="passwordmd5" type="password" class="form-control x319 in">
    			</div>
    			<%--<div class="form-group">
    				<label for="j_captcha" class="t">验证码：</label> <input id="j_captcha" name="j_captcha" type="text" class="form-control x164 in">
    				<img id="captcha_img" alt="点击更换" title="点击更换" src="Scripts/B-JUI/images/captcha.jpeg" class="m">
    			</div>--%>
    			<div class="form-group">
                    <label class="t"></label>
                    <label for="j_remember" class="m"><input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
    			</div>
    			<div class="form-group space">
                    <label class="t"></label>　　　
    				<input type="submit" id="login_ok" value="&nbsp;登&nbsp;录&nbsp;" class="btn btn-primary btn-lg">&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">
    			</div>
    		</form>
        </div>
	</div>
<%--	<div class="bottom">Copyright &copy; 2013 - 2014 <a href="#">美谷科技</a></div>--%>
</div>
</body>
</html>