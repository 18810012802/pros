<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 UserForm uf=(UserForm)request.getAttribute("uf"); 
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
margin-top: 5px;
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
margin-top: 5px;
font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
color: #888;
width: 50%;
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
width: 50%;
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
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div>
   
 <div id="i5"><div id="i6">
   
  <div class="elegant-aero">
<form action="/emp/news.do?type=loginUI" method="post" class="STYLE-NAME">
<h1>用户信息
<span></span>
</h1>
<label>
<span>用 &nbsp;户&nbsp;ID:</span>
<input id="name" type="text" name="userno" placeholder="" value="<%=uf.getUserno() %>" readonly/>
</label>
<label>
<span>园　　号:</span>
<input id="email" type="text" name="yno" placeholder="" value="<%=uf.getYno() %>" readonly/>
</label>
<label>
<span>楼　　号:</span>
<input id="email1" type="text" name="bno" placeholder="" value="<%=uf.getBno() %>" readonly/>
</label>
<label>
<span>真实姓名 :</span>
<input id="email2" type="text" name="ename" placeholder="" value="<%=uf.getEname() %>" readonly/>
</label>
<label>
<span>性　　别 :</span>
<input id="email3" type="text" name="sex" placeholder="" value="<%=uf.getSex() %>" readonly/>
</label>
<label>
<span>邮　　箱 :</span>
<input id="email3" type="text" name="email" placeholder="" value="<%=uf.getEmail() %>" readonly/>
</label>
<label>
<span>联系方式:</span>
<input id="email4" type="text" name="phone" placeholder="" value="<%=uf.getPhone() %>" readonly/>
</label>
<label>
<span>职　　位 :</span><select name="job" >

<option value="manager" <%=(uf.getJob().equals("manager")?"selected":"") %>>管理员</option>
<option value="sysmanager" <%=(uf.getJob().equals("sysmanager")?"selected":"") %>>超级管理员</option>
</select>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" value="更该账户" />
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
