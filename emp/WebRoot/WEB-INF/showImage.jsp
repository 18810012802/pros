<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
PropertyForm pf=(PropertyForm)request.getAttribute("pf");
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
	
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
   <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
    <td width="150"  height="94" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    <td>
    <div align="center">
   
<table width="60%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><a href="/emp/property1.do?type=left"><img src="images/tjjl.gif" width="149" height="63" /></a></td>
            </tr>
            <tr>
            <td align="center"><img src="images/<%=pf.getImage2() %>" width="100%" /></td>
            </tr>
           
        </table>
      
  
   </div>
    
    </td> <td width="150" height="94"></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>
  </body>
</html>
