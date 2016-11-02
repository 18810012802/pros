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
	
	.elegant-aero1 {
	float:left;
margin-left:0;
margin-top:0;
width:50%;
max-width: 1100px;
background: #D2E9FF;
padding: 0px 0px 0px 0px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}
.elegant-aero2 {
	float:left;
margin-left:0;
margin-top:0;
width:50%;
max-width: 1100px;
background: #D2E9FF;
padding: 0px 0px 0px 0px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}
#i7 { float:left;position:relative; width:780px; height:580px; overflow:hidden; margin:0 0 0 285; }  
    #i8 { position:absolute;width:780px;height:580px;}
 #i9 { float:left;position:relative; width:160px; height:580px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }

	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
     <%--  <div id="i9"><div id="i10">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div> --%>
   
 <div id="i7"><div id="i8">
   
  <div class="elegant-aero1">
  <img width="100%" src="images/bszn.jpg"/>
  </div>
  <div class="elegant-aero2">
  <img width="100%" src="images/sx.jpg"/>
</div>
   
   </div></div>
  
  

  
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
