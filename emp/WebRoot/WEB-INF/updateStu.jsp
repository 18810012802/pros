<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
StuForm iff=(StuForm)request.getAttribute("sf");
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
    <form action="/emp/stu.do?type=updateStu" method="post">
<table width="60%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><a href="/emp/stu.do?type=left"><img src="images/xsxx.gif" width="149" height="63" /></a></td>
            </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
        
            
              <tr>
            <td width="50%" align="right">*园&nbsp;&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="yno" type="text" size="15" value="<%=iff.getYno() %> "readonly/></td>
          </tr>
           
              <tr>
            <td width="50%" align="right">*楼&nbsp;&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="buildingno" type="text" size="15" value="<%=iff.getBuildingno() %> " readonly/></td>
          </tr>
          
           
              <tr>
            <td width="50%" align="right">*寝&nbsp;室&nbsp;号：</td>
            <td width="50%"><input name="dormno" type="text" size="15" value="<%=iff.getDormno() %> " readonly/></td>
          </tr>
          
          
          <tr>
            <td width="50%" align="right"*>床&nbsp;位&nbsp;号：</td>
            <td width="50%"><input name="bedno" type="text" size="15" value="<%=iff.getBedno() %>" readonly/></td>
          </tr>
          
          <tr>
            <td width="50%" align="right">学&nbsp;&nbsp;&nbsp;院：</td>
            <td width="50%"><input name="seminary" type="text" size="15" value="<%=iff.getSeminary() %>" /></td>
          </tr>
          
             <tr>
            <td width="50%" align="right">专&nbsp;&nbsp;&nbsp;业：</td>
            <td width="50%"><input name="major" type="text" size="15" value="<%=iff.getMajor()%>"/></td>
          </tr>
         
          <tr>
          
            <td align="right">*学&nbsp;&nbsp;&nbsp;号：</td>
            <td><input name="stuno" type="text" size="15" value="<%=iff.getStuno()%>" readonly/></td>
          </tr>
         
          <tr>
           
        
            <td align="right">姓&nbsp;&nbsp;&nbsp;名：</td>
            <td><input name="name" type="text" size="15" value="<%=iff.getName()%>" /></td>
          </tr>
        
          <tr>
            <td align="right">性&nbsp;&nbsp;&nbsp;别：</td>
            <td><input name="sex" type="text" size="15" value="<%=iff.getSex() %>"/></td>
          </tr>
        
          <tr>
            <td align="right">电&nbsp;&nbsp;&nbsp;话：</td>
            <td><input name="phone" type="text" size="15" value="<%=iff.getPhone() %>"/></td>
          </tr>
         <tr>
            <td align="right">入住时间：</td>
            <td><input name="intime" type="text" size="15" value="<%=iff.getIntime() %>"/></td>
          </tr>
          <tr>
            <td align="right">角&nbsp;&nbsp;&nbsp;色：</td>
             <td width="25%"><select name="role" ><option value="head" <%=(iff.getRole().equals("head")?"selected":"")%>>舍长<option value="member" <%=(iff.getRole().equals("member")?"selected":"")%>>舍员</select></td>
             
          </tr>
           
          
         
          <tr>
         
            <td colspan="2" align="center"><input type="image" name="Submit2" src="images/xa1.gif" width="39"  value="修改账户信息" /></td>
          </tr>
           
        </table>
        </form>
  
   </div>
    
    </td> <td width="150" height="94"></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>
  </body>
</html>
