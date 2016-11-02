
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
StuForm sf=new StuForm();

sf=(StuForm)request.getAttribute("sf");
ArrayList<StuBean> al=(ArrayList)request.getAttribute("al");


int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
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
     <form action="/emp/stu.do?type=step5" method="post">
     <table class="abc" width="75%" border="1" cellpadding="0" cellspacing="0" bordercolor="#551A8B">
     <tr>
           
        <td colspan="4" align="center"><img src="images/dl1.gif" width="149" height="63" /></td>
    </tr>
    
    <tr> 
       <td width="25%" align="right">园号：</td>
       <td width="25%"><input name="yno" type="text" size="15" value="<%=sf.getYno() %>" readonly/></td>
        <td width="25%" align="right">请输入姓名：</td>
       <td width="25%"><input  name="name" type="text" size="15" value=""/></td>
     </tr> 
     <tr> 
       <td width="25%" align="right">楼号：</td>
       <td width="25%"><input name="buildingno" type="text" size="15" value="<%=sf.getBuildingno()%>" readonly/></td>
        <td width="25%" align="right">请输入性别：</td>
       <td width="25%"><input  name="sex" type="text" size="15" value=""/></td>
     </tr> 
      <tr> 
       <td width="25%" align="right">寝室号：</td>
       <td width="25%"><input name="dormno" type="text" size="15" value="<%=sf.getDormno()%>" readonly/></td>
        <td width="25%" align="right">请输入学院：</td>
       <td width="25%"><input  name="seminary" type="text" size="15" value=""/></td>
     </tr> 
       <tr> 
       <td width="25%" align="right">床位号：</td>
       <td width="25%"><input  name="bedno" type="text" size="15" value="<%=sf.getBedno()%>" readonly/></td>
        <td width="25%" align="right">请输入专业：</td>
       <td width="25%"><input  name="major" type="text" size="15" value=""/></td>
     </tr>
      <tr> 
       <td width="25%" align="right">请输入学号：</td>
       <td width="25%"><input  name="stuno" type="text" size="15" value=""/></td>
        <td width="25%" align="right">请输入电话：</td>
       <td width="25%"><input  name="phone" type="text" size="15" value=""/></td>
     </tr>  
      <tr>
        <td colspan="4" align="right">
       
        <a href="/emp/stu.do?type=step3&yno=<%=sf.getYno() %>&bno=<%=sf.getBuildingno()%>&dormno=<%=sf.getDormno()%>"><img src="images/cartpre.gif" border="0" width="87" height="19" /></a>
      
        
        <input type="image" src="images/cartnext.gif" border="0" width="87" height="19" /></td>
      </tr>
      </table>
     </form>
        <table class="abc" width="75%" height="200" border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		  <tr>
		  <th>床位号</th> <th>学号</th><th>姓名</th> <th>性别</th>  <th>专业</th> <th>入住日期</th><th>联系电话</th><th>修改</th><th>删除</th>
		</tr>
		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  StuBean sb=(StuBean)al.get(i);
		 %>
		 
		 <tr align="center">
				
			 <td><%=sb.getBedno() %></td><td><%=sb.getStuno() %> </td><td><%=sb.getName() %> </td> <td><%=sb.getSex() %> </td> <td><%=sb.getMajor() %>  </td> <td><%=sb.getIntime() %> </td> <td><%=sb.getPhone() %>  </td>
		 <td><a href="/emp/stu.do?type=update&stuno=<%=sb.getStuno()%>">修改</a></td><td> <a href="/emp/stu.do?type=delete&stuno=<%=sb.getStuno() %>">删除</a></td> 
		
		 </tr>
		  
		 <%
		 }
		 
		  %>
		   <tr>
             <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
		 
		<tr>
  <td colspan="9" align="center">
    <table  height="5" class="abc" border="0" cellpadding="0" cellspacing="0">
    <%
    
    for(int i=1;i<=pageCount;i++)
    {
    %>
     <td align="center">
    <form id="form<%=i %>" name="form<%=i %>" action="/emp/stu.do?type=step5&pageNow=<%=i %>" method="post">
    <input type="hidden" name="yno" value="<%=sf.getYno() %>" /> <input type="hidden" name="buildingno" value="<%=sf.getBuildingno() %>" />
   <input type="hidden" name="dormno" value="<%=sf.getDormno() %>" />  <input type="hidden" name="bedno" value="<%=sf.getBedno() %>" />
    <a href="javascript:" onclick="document.getElementById('form<%=i %>').submit();">[<%=i%>]</a>
    </form>
     </td>
    <%
    }
     %>
 
</table></td></tr>
</table> </div></td>
      <td width="150"  height="94" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>

  </body>
</html>
       
   