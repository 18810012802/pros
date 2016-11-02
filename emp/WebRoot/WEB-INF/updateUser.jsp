<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
UserForm ub=(UserForm)request.getAttribute("uf");
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
    <form action="/emp/updateUser.do?type=updateUser" method="post">
<table width="60%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><a href="/emp/updateUser.do?type=left"><img src="images/gyxx.png" width="149" height="63" /></a></td>
            </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td width="50%" align="right">*员工号：</td>
            <td width="50%"><input name="userno" type="text" size="15" value="<%=ub.getUserno() %>" readonly/></td>
          </tr>
            
              <tr>
            <td width="50%" align="right">园&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="yno" type="text" size="15" value="<%=ub.getYno() %> "/></td>
          </tr>
           
              <tr>
            <td width="50%" align="right">楼&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="bno" type="text" size="15" value="<%=ub.getBno() %> " /></td>
          </tr>
          
          
          
            
          
          
           
              <tr>
            <td width="50%" align="right">职&nbsp;&nbsp;位：</td>
     <td width="50%"><select name="job" ><option value="manager" <%=(ub.getJob()=="manager"?"selected":"") %>>管理员<option value="cleaner" <%=(ub.getJob()=="cleaner"?"selected":"") %>>普通员工</select></td>
          </tr>
          
          
          <tr>
            <td width="50%" align="right">性&nbsp;&nbsp;别：</td>
            <td width="50%"><input name="sex" type="text" size="15" value="<%=ub.getSex() %>" /></td>
          </tr>
          
          <tr>
            <td width="50%" align="right">年&nbsp;&nbsp;龄：</td>
            <td width="50%"><input name="age" type="text" size="15" value="<%=ub.getAge() %>" /></td>
          </tr>
          
             <tr>
            <td width="50%" align="right">密&nbsp;&nbsp;码：</td>
            <td width="50%"><input name="password" type="text" size="15" value="<%=(ub.getPassword()==null?"":ub.getPassword())%>"  /></td>
          </tr>
         
          <tr>
          
            <td align="right">真实姓名：</td>
            <td><input name="ename" type="text" size="15" value="<%=ub.getEname()%>" /></td>
          </tr>
         
         
        
          <tr>
            <td align="right">联系电话：</td>
            <td><input name="phone" type="text" size="15" value="<%=ub.getPhone()%>"/></td>
          </tr>
        
          <tr>
            <td align="right">电子邮件：</td>
            <td><input name="email" type="text" size="15" value="<%=ub.getEmail()%>"/></td>
          </tr>
          <tr>
            <td align="right">地址：</td>
            <td><input name="address" type="text" size="15" value="<%=ub.getAddress()%>"/></td>
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
