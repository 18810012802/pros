<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
/* UserForm ub=(UserForm)request.getAttribute("uf"); */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<style type="text/css">
	div { margin:0; padding:0; } 
	#i1 { position:relative; width:780px; height:130px; overflow:hidden; margin:0 auto; }  
    #i2 { position:absolute;} 

     #i3 { float:left;position:relative; width:160px; height:430px; overflow:hidden; margin:0 0 0 285; }  
 #i4 { position:absolute;  }
	 #i5 { float:left;position:relative; width:620px; height:700px; overflow:hidden; margin:0; }  
 #i6 { position:absolute;width:620px;height:300px;}
	
	

img{border:none;}

dl,dt,dd{display:block;margin:0;}
*{font-family:'微软雅黑';font-size:12px;color:#626262;}
a{text-decoration:none;}

#bg{background-image:url(images/content/dotted.png);}
 .container{width:100%;height:460;margin:auto;}
 
/*left*/
.leftsidebar_box{left:px;width:160px;height:auto !important;overflow:visible !important;position:absolute;height:100% !important;background-color:#356FB8;}
 .line{height:2px;width:100%;background-image:url(images/left/line_bg.png);background-repeat:repeat-x;}
.leftsidebar_box dt{padding-left:40px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#f5f5f5;font-size:14px;position:relative;line-height:48px;cursor:pointer;}
.leftsidebar_box dd{background-color:#3992d0;padding-left:40px;}
.leftsidebar_box dd a{color:#f5f5f5;line-height:20px;}
.leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
.system_log dt{background-image:url(images/left/system.png)}
.custom dt{background-image:url(images/left/custom.png)}
.channel dt{background-image:url(images/left/channel.png)}
.app dt{background-image:url(images/left/app.png)}
.cloud dt{background-image:url(images/left/cloud.png)}
.syetem_management dt{background-image:url(images/left/syetem_management.png)}
.source dt{background-image:url(images/left/source.png)}
.statistics dt{background-image:url(images/left/statistics.png)}
.leftsidebar_box dl dd:last-child{padding-bottom:10px;}




.elegant-aero {
margin-left:0;
margin-top:0;
margin-right:auto;
max-width: 700px;
background: #D2E9FF;
padding: 20px 20px 20px 20px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}
.elegant-aero h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 10px 10px 10px 20px;
display: block;
background: #C0E1FF;
border-bottom: 1px solid #B8DDFF;
margin: -20px -20px 15px;
}
.elegant-aero h1>span {
display: block;
font-size: 11px;
}
.elegant-aero label>span {
float: left;
margin-top: 10px;
color: #5E5E5E;
}
.elegant-aero label {
display: block;
margin: 0px 0px 5px;
}
.elegant-aero label>span {
float: left;
width: 20%;
text-align: right;
padding-right: 15px;
margin-top: 10px;
font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
color: #888;
width: 70%;
padding: 0px 0px 0px 5px;
border: 1px solid #C5E2FF;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
box-shadow: inset 0px 1px 6px #ECF3F5;
font: 200 12px/25px Arial, Helvetica, sans-serif;
height: 30px;
line-height:15px;
margin: 2px 6px 16px 0px;
}
.elegant-aero textarea{
height:100px;
padding: 5px 0px 0px 5px;
width: 70%;
}
.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 70%;
}
.elegant-aero .button{
padding: 10px 30px 10px 30px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button:hover{
background: #3EB1DD;
}
	</style>


  </head>
  
  <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
      <div id="i3"><div id="i4">
    <!--  <table width="200px" height="600px" border="0" align="left" cellpadding="0" cellspacing="0">
 -->
<div class="container">

	<div class="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onClick="changeImage()">登陆记录<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">学生</a></dd>
			
			<dd><a href="#">管理员</a></dd>
		</dl>
	
		<dl class="custom">
			<dt onClick="changeImage()">权限管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">学生管理</a></dd>
			
			<dd><a href="#">管理员</a></dd>
		</dl>
	
		<dl class="channel">
			<dt>新闻管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">新闻管理</a></dd>
			<dd><a href="#">渠道标准管理</a></dd>
			<dd><a href="#">系统通知</a></dd>
			
		</dl>
	
		<dl class="app">
			<dt onClick="changeImage()">通告管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">App运营商管理</a></dd>
			<dd><a href="#">开放接口管理</a></dd>
			<dd><a href="#">接口类型管理</a></dd>
		</dl>
	
		<dl class="cloud">
			<dt>留言管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">平台运营商管理</a></dd>
		</dl>
	
		<dl class="syetem_management">
			<dt>系统管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">后台用户管理</a></dd>
			<dd><a href="#">角色管理</a></dd>
			<dd><a href="#">类型管理</a></dd>
			<dd><a href="#">修改用户密码</a></dd>
		</dl>
	
		<dl class="source">
			<dt>素材库管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">图片库</a></dd>
			<dd><a href="#">链接库</a></dd>
			<dd><a href="#">文件库</a></dd>
		</dl>
	
		<dl class="statistics">
			<dt>统计分析<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">统计</a></dd>
		</dl>
	
	</div>

</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(".leftsidebar_box dt").css({"background-color":"#356FB8"});
$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
$(function(){
	$(".leftsidebar_box dd").hide();
	$(".leftsidebar_box dt").click(function(){
		$(".leftsidebar_box dt").css({"background-color":"#356FB8"})
		$(this).css({"background-color": "#3992d0"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
		$(this).parent().find('img').attr("src","images/left/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
})
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>


 
 
 
 
 
   </div></div>
   
  <div id="i5"><div id="i6">
   
    
<div class="elegant-aero">
<form action="/emp/message.do?type=addMessage" method="post" class="STYLE-NAME">
<h1>留言簿
<span></span>
</h1>
<label>
<span>你的 名字 :</span>
<input id="name" type="text" name="name" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>留言 主题 :</span><select name="title">
<option value="property">物品报损</option>
<option value="business">事务咨询</option>
</select>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" value="发送" />
</label>
</form></div>


  
</div></div>
  
   
  
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
