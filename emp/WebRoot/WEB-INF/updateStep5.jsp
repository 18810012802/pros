
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
StuForm sf=new StuForm();
sf=(StuForm)request.getAttribute("sf");
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
    
    <td><div align="center">
     <form action="/emp/stu.do?type=updateStep5" method="post">
     <table class="abc" width="75%" border="1" cellpadding="0" cellspacing="0" bordercolor="#551A8B">
     <tr>
           
        <td colspan="4" align="center"><img src="images/dll2.gif" width="149" height="63" /></td>
    </tr>
     <tr> 
       <td colspan="2" width="50%" align="right">学号：</td>
       <td colspan="2" width="50%"><input  name="stuno" type="text" size="15" value="<%=sf.getStuno() %>" readonly/></td>
        
     </tr>  
    <tr> 
       <td width="25%" align="right">*园号：</td>
       <td width="25%"><input name="yno" type="text" size="15" value="<%=sf.getYno() %>" readonly/></td>
        <td width="25%" align="right">姓名：</td>
       <td width="25%"><input  name="name" type="text" size="15" value="<%=sf.getName() %>"/></td>
     </tr> 
     <tr> 
       <td width="25%" align="right">*楼号：</td>
       <td width="25%"><input name="buildingno" type="text" size="15" value="<%=sf.getBuildingno()%>" readonly/></td>
        <td width="25%" align="right">性别：</td>
       <td width="25%"><input  name="sex" type="text" size="15" value="<%=sf.getSex() %>"/></td>
     </tr> 
      <tr> 
       <td width="25%" align="right">*寝室号：</td>
       <td width="25%"><input name="dormno" type="text" size="15" value="<%=sf.getDormno()%>" readonly/></td>
        <td width="25%" align="right">学院：</td>
       <td width="25%"><input  name="seminary" type="text" size="15" value="<%=sf.getSeminary() %>"/></td>
     </tr> 
       <tr> 
       <td width="25%" align="right">*床位号：</td>
       <td width="25%"><input  name="bedno" type="text" size="15" value="<%=sf.getBedno()%>"/></td>
        <td width="25%" align="right">专业：</td>
       <td width="25%"><input  name="major" type="text" size="15" value="<%=sf.getMajor() %>"/></td>
     </tr>
      <tr> 
       <td width="25%" align="right">入学时间：</td>
       <td width="25%"><input  name="intime" type="text" size="15" value="<%=sf.getIntime() %>" readonly/></td>

        <td width="25%" align="right">电话：</td>
       <td width="25%"><input  name="phone" type="text" size="15" value="<%=sf.getPhone() %>"/></td>
     </tr> 
     
      <tr>
        <td colspan="4" align="right">
       
        <a href="/emp/stu.do?type=step4&yno=<%=sf.getYno() %>&bno=<%=sf.getBuildingno()%>&dormno=<%=sf.getDormno()%>&bedno=<%=sf.getBedno()%>"><img src="images/cartpre.gif" border="0" width="87" height="19" /></a>
      
        
        <input type="image" src="images/cartnext.gif" border="0" width="87" height="19" /></td>
      </tr>
      </table>
     </form></div>
       </td>
      <td width="150"  height="94" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>

  </body>
</html>
       
   