<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
MessageForm mf=(MessageForm)request.getAttribute("mf");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
 <style> 
 /*  .keleyitable {  width: 800px;  }   
  .keleyitable td, th {  border: 1px solid green;margin-top:10px;  }  */
  .klytd {width:100px;text-align:right; border: 1px solid #551A8B;margin-top:10px;  }  
  .hvttd {  width:500px; border: 1px solid #551A8B;margin-top:10px;}  
   </style>    
   </head>  
  <body topmargin="0" background="images/bg.bmp">
 
   <table  width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
    <td width="150"  height="94" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    
    
    
    <td> 
   <!-- <div style="margin:0px auto; border:1px solid #551A8B; margin-top:10px;"> -->
   
   
   <table style="border:1px solid #551A8B; align:center">  
    <tr><td align="center"> <a href="/emp/message.do?type=left"><img src="images/lyxq.jpg" width="140"/></a> </td></tr>  
   <tr><td class="klytd">留言时间：</td><td class="hvttd"><%=mf.getMestime() %></td></tr> 
    <tr><td class="klytd">留言人：</td><td class ="hvttd"><%=mf.getSender() %></td></tr> 
     <tr><td class="klytd">接收人：</td><td class ="hvttd"><%=mf.getGetter() %></td></tr> 
 <tr><td class="klytd">标题：</td><td class ="hvttd"><%=mf.getTitle() %></td></tr> 
  <tr><td class="klytd">电子邮件：</td><td class ="hvttd"><%=mf.getEmail() %></td></tr> 
   <tr><td class="klytd">内容：</td>
   <td class="hvttd"><%=mf.getMescon() %>
   <a href="http://keleyi.com/a/bjad/nvy3vslt.htm"></a>
   </td>
   </tr>
     </table>   
  
   
    </td><td width="100" height="94"></td>
    </tr>
    
    <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
    </table>
    </body>
    </html>
    