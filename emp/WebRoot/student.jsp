<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 StuForm sf=(StuForm)request.getAttribute("sf"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//h2D XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/h2D/xhtml1-transitional.h2d">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>登陆界面</title>
<link rel="stylesheet" type="text/css" href="css/my.css">


<style type="text/css">
.elegant-aero {
margin-left:auto;
margin-right:auto;
max-width: 740px;
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
margin: 0px 100px 5px;
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
width: 50%;
padding: 0px 10px 0px 5px;
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
width: 50%;
}
.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 53%;
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
  </tr></table></div></div>
<div class="elegant-aero">
<form action="/emp/news.do?type=loginUI" method="post" class="STYLE-NAME">
<h1>用户信息
<span>&nbsp;<a href="/emp/login.do?type1=changePassword"><font color="#666">(修改密码)</font></a></span>
</h1>
<label>
<span>学　　号:</span>
<input id="name" type="text" name="stuno" value="<%=sf.getStuno() %>" readonly/>
</label>
<label>
<span>园　　号:</span>
<input id="email" type="text" name="yno"  value="<%=sf.getYno() %>" readonly/>
</label>
<label>
<span>楼　　号:</span>
<input id="email1" type="text" name="bno"  value="<%=sf.getBuildingno() %>" readonly/>
</label>
<label>
<span>寝室号 :</span>
<input id="email2" type="text" name="dormno"  value="<%=sf.getDormno() %>" readonly/>
</label>
<label>
<span>姓　　名 :</span>
<input id="email6" type="text" name="name"  value="<%=sf.getName() %>" readonly/>
</label>

<label>
<span>性　　别 :</span>
<input id="email3" type="text" name="sex"  value="<%=sf.getSex() %>" readonly/>
</label>
<label>
<span>联系方式:</span>
<input id="email4" type="text" name="phone"  value="<%=sf.getPhone() %>" readonly/>
</label>
<label>
<span>角　　色 :</span><select name="role" >

<option value="head" <%=(sf.getRole().equals("head")?"selected":"") %>>舍长</option>
<option value="member" <%=(sf.getRole().equals("member")?"selected":"") %>>普通成员</option>
</select>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" value="更该账户" />

</label>
</form></div>

<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
</body>

</html> 