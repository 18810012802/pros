<%@ page language="java" import="com.qdu.model.*" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
YardBean yb=(YardBean)request.getAttribute("yardsInfo");
BuildingBO bbb=new BuildingBO();
int rowCount=bbb.getRowCount(yb.getYno());

PartBean pb=bbb.getPartInfo(yb.getYno());
  		
BuildingBean bb=(BuildingBean)request.getAttribute("bb");
		 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<script type="text/javascript">
<!-- 
function returnHall()
{

  window.open("main.jsp","_self");
}




 -->
 </script>
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
  <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr>
  
  
  
  
    <td width="150" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    
    
    
    <td align="center"> <table width="90%" class="abc" width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr><td>
    <table class="abc" width="100%" border="0" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		  <tr>
		    <td align="center">
		    <table class="abc" width="100%" border="1" bordercolor="#551A8B" cellspacing="0" cellpadding="0">
		      
		      <tr>
		        <td width="26%" rowspan="8"><img src="images/a<%=yb.getImage()%>" width="136" height="139" /></td>
		        <td width="74%" align="left">园名：<%=yb.getYname()%></td>
		      </tr>
		      <tr>
		        <td>园号:<%=yb.getYno()%></td>
		      </tr>
		      <tr>
		        <td>楼数:<%=rowCount%></td>
		      </tr>
		      <tr>
		        <td>所属院区:<%=pb.getPname()%></td>
		      </tr>
		     
		      <tr>
		        <td>院区地址:<%=pb.getPaddress()%></td>
		      </tr>
		     
		      <tr>
		        <td>简介:<%=yb.getDesc()%></td>
		      </tr>
		     
		    </table>
		    
		    </td>
		  </tr>
		  
		  <tr>
             <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
          <tr>
             <td align="center" height="5"><form action="/emp/queryByBuildingno.do" method="post">输入楼号：<input type="text" name="buildingno" value="<%=bb.getBno() %>"/><input type="hidden" name="yno" value="<%=yb.getYno()%>"/><input type="submit" name="submit" value="查询"/><input type="button" name="button2" value="添加"/></form></td> 
           
          </tr>
		  <tr><td>
		  <table class="abc" width="100%" border="1" cellpadding="0" cellspacing="0">
		  <tr>
		  <th>楼号</th> <th>类型</th> <th>管理员</th><th>电话号码</th><th>楼层数</th> <th>房间数</th>  <th>人数</th>
		</tr>
		
		 <tr>
		 
		 <td><%=bb.getBno() %></td> <td><%=bb.getType() %></td> <td><%=bb.getManager() %></td> <td><%=bb.getPhone() %></td> <td><%=bb.getLevelnum() %></td> <td><%=bb.getRoomnum() %></td> <td><%=bb.getStunum() %></td>  
		 </tr>
		
		<tr>
    <td colspan="9" align="center">
    <%
   
    %>
    <a href="ShowBuildingsClServlet?type=fenye&yno=<%=yb.getYno()%>">返回总表查询</a>
    <%
   
     %>
     </td>
  </tr>

</table> 
</td>
</tr>
</table></td>

</tr> 
</table></td>
</tr>


<tr>
    <td colspan="2" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
  
  </table>
  </body>
</html>
