<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">
	
	<title>
欢迎来到青大学生宿舍管理系统！
</title>
 <style type="text/html">
 body {
   font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        background: #E6EAE9; 
    }
 </style>
  </head>
  
  <body>
    <center>
<table width="300px" height="130Px"><tr><td>　</td></tr></table>
<table align="center" width="420px" height="400px" 
background="images/logo2.jpg" >
<tr><td>　　</td></tr>

<tr><td align="right">
<%
if((String)request.getAttribute("warning")!=null)
{
String w=(String)request.getAttribute("warning");
if(w.equals("1"))
{%>
<font color="red">用户名或密码输入有误!</font>
<%

}
}else{%><a href="/emp/news.do"><b><font color="#3E356A">首页　　　</font></b></a><%
}%>　</td></tr><tr><td>
<tr><td align="center"><font size="6"><b>学生宿舍管理系统</b></font></td></tr><tr>


<td>

<form action="/emp/login.do" method="post">

 <center><b>用户名:</b><input type="text" name="userno" maxlength="13" style="width:205px" /><br/><br/></center>
<center> <b>  密　码:</b><input type="password" name="password" maxlength="13" style="width:205px"/><br/><br/></center>


<center><input type="submit" value="登陆" style="width:68px;color:white;background:#3E347B;border:0"/>　　　　
<input type="reset" value="重写" style="width:68px;color:white;background:#3E347B;border:0"/><br/><br/></center>
<br/><br/>
</form>


<br/></td></tr>


</table>
 
</center>
  </body>
</html>
