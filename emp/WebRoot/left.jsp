<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<style type="text/css">
		
	

img{border:none;}

dl,dt,dd{display:block;margin:0;}
*{font-family:'微软雅黑';font-size:12px;color:#626262;}
a{text-decoration:none;}

#bg{background-image:url(images/content/dotted.png);}
 .container{width:100%;height:950;margin:auto;}
 
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

</style>
<div class="container">

	<div class="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onClick="changeImage()">登陆记录<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="/emp/loginRecord.do?type=m_left">主界面</a></dd>
			
			
		</dl>
	
		<dl class="custom">
			<dt onClick="changeImage()">学生信息<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="/emp/stu.do?type=m_left">主界面</a></dd>
			
			
		</dl>
		<dl class="cloud">
			<dt>报损记录<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="/emp/repaire.do?type=m_left">主界面</a></dd>
		</dl>
		<dl class="source">
			<dt>出入记录<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="/emp/access.do?type=m_left">主界面</a></dd>
			
		</dl>
	
		<dl class="statistics">
			<dt>卫生记录<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="/emp/inspect.do?type=m_left">主界面</a></dd>
		</dl>
	<dl class="syetem_management">
			<dt>系统设置<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">主界面</a></dd>
			<dd><a href="#">权限管理</a></dd>
			<dd><a href="/emp/login.do?type1=changePassword">修改密码</a></dd>
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

