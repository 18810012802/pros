<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//h2D XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/h2D/xhtml1-transitional.h2d">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>留言板</title>
<link rel="stylesheet" type="text/css" href="css/my.css">
	<style type="text/css">
	div { margin:0; padding:0; } 
	#i1 { position:relative; width:780px; height:130px; overflow:hidden; margin:0 auto; }  
    #i2 { position:absolute;} 

	
	

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
  </tr></table></div></div>
<div class="elegant-aero">
<form action="/emp/message.do?type=addMessage" method="post" class="STYLE-NAME">
<h1>留言簿
<span><a href="/emp/message.do?type=messageList"><font color="#666">(链接：留言记录)</font></a></span>
</h1>
<label>
<span>你的 邮箱 :</span>
<input id="email" type="email" name="email" placeholder="" />
</label>
<label>
<span>留言 主题 :</span>
<input type="text" id="mescon" name="message" placeholder="物品报损/事务咨询/其他"></textarea>
</label>
<label>

<span>留言 内容 :</span>
<textarea id="mescon" name="message" placeholder=""></textarea>
</label>
<label>
<span>接收者:</span><select name="title">
<option value="物品报损">超级管理员</option>
<option value="事务咨询">本地管理员</option>

</select>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" value="发送" />
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