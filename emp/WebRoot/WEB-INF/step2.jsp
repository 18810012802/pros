<%@ page language="java" import="java.util.*,com.qdu.struts.form.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
StuForm sf=new StuForm();

sf=(StuForm)request.getAttribute("sf");
ArrayList<BuildingBean> al=(ArrayList)request.getAttribute("al");


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
    <form action="/emp/stu.do?type=step2" method="post">
     <table class="abc" width="75%" border="1" cellpadding="0" cellspacing="0" bordercolor="#551A8B">
     <tr>
           
        <td colspan="3" align="center"><img src="images/dl1.gif" width="149" height="63" /></td>
    </tr>
    
    <tr> 
       <td width="50%" align="right">园号：</td>
       <td width="50%"><input name="yno" type="text" size="25" value="<%=sf.getYno() %>" readonly/></td>
     </tr> 
     <tr> 
       <td width="50%" align="right">请输入楼号：</td>
       <td width="50%"><input id="buildingno" name="buildingno" type="text" size="25" /></td>
     </tr> 
      <tr>
        <td colspan="3" align="right">
        
        <a href="ShowStuClServlet?type=step"><img src="images/cartpre.gif" border="0" width="87" height="19" /></a>
       
        <input type="image" src="images/cartnext.gif" border="0" width="87" height="19" /></td>
      </tr>
      </table>
      </form>
        <table class="abc" width="75%" height="200" border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		  <tr>
		  <th>楼号</th> <th>类型</th><th>管理员</th> <th>寝室数</th>  <th>人数</th>
		</tr>
		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  BuildingBean bb=(BuildingBean)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=bb.getBno() %></td><td><%=bb.getType() %> </td><td><%=bb.getManager() %></td> <td><%=bb.getRoomnum() %> </td> <td><%=bb.getStunum() %> </td> 
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
    <form id="form<%=i %>" name="form<%=i %>" action="/emp/stu.do?type=step1&pageNow=<%=i %>" method="post">
    <input type="hidden" name="yno" value="<%=sf.getYno() %>" /><a href="javascript:" onclick="document.getElementById('form<%=i %>').submit();">[<%=i%>]</a>
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
