<%@ page language="java" import="com.qdu.model.*" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
YardBean yb=(YardBean)request.getAttribute("yardsInfo");

BuildingBO bbb=new BuildingBO();
String s_pageNow=(String)request.getAttribute("abc");

int pageNow=1;
if(s_pageNow!=null)
{
pageNow=Integer.parseInt(s_pageNow);
}
ArrayList<BuildingBean> al=bbb.getBuildingsByPage(6,pageNow,yb.getYno());
int rowCount=bbb.getRowCount(yb.getYno());
int pageCount=bbb.getPageCount(6,yb.getYno());
PartBean pb=bbb.getPartInfo(yb.getYno());
 BuildingBean bb=new BuildingBean();
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
	<script language="javascript" type="text/javascript">

function returnHall()
{

  window.open("main.jsp","_self");
}
function restore()
{

window.alert("res");
}





 </script>
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
  <table width="75%" height="80%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
  <tr>
  
  
  
  
    <td width="150" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    
    
    
    <td align="center"> <table width="100%" class="abc" width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr><td>
    <table class="abc" width="100%" border="0" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		  <tr>
		    <td align="center">
		    <table class="abc" width="100%" border="0" bordercolor="#551A8B" cellspacing="0" cellpadding="0">
		    <tr><td>
		     <table class="abc" width="100%" border="1" bordercolor="#551A8B" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="26%" rowspan="8"><img src="images/a<%=yb.getImage()%>" width="220" height="" /></td>
		        <td width="74%" align="left">&nbsp;>&nbsp;>&nbsp;园名：<%=yb.getYname()%></td>
		      </tr>
		      <tr>
		        <td>&nbsp;>&nbsp;>&nbsp;园号:<%=yb.getYno()%></td>
		      </tr>
		      <tr>
		        <td>&nbsp;>&nbsp;>&nbsp;楼数:<%=rowCount%></td>
		      </tr>
		      <tr>
		        <td>&nbsp;>&nbsp;>&nbsp;所属院区:<%=pb.getPname()%></td>
		      </tr>
		     
		      <tr>
		        <td>&nbsp;>&nbsp;>&nbsp;院区地址:<%=pb.getPaddress()%></td>
		      </tr>
		     
		      <tr>
		        <td>&nbsp;>&nbsp;>&nbsp;简介:<%=yb.getDesc()%></td>
		      </tr>
		      
		    </table>
		    </td>
		    
		    <%
		    if(yb.getYno().equals('6'))
		    {
		    
		     %>
		    <td align="right">
		    <img src="images/a<%=yb.getImage()%>" width="220" height="" />
		    </td>
		    <%
		    }
		      %>
		    </tr>
		    </table>
		    </td>
		  </tr>
		  
		  <tr>
             <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
          
		  <tr><td>
		  <table class="abc" width="100%" height="200" border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		  <tr>
		  <th>楼号</th> <th>类型</th> <th>管理员</th><th>电话号码</th><th>楼层数</th> <th>房间数</th>  <th>人数</th><th>修改</a></th> <th>删除</th>
		</tr>
		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  bb=(BuildingBean)al.get(i);
		 %>
		 <tr>
		 
		 <td><%=bb.getBno() %></td> <td><%=bb.getType() %></td> <td><%=bb.getManager() %></td> <td><%=bb.getPhone() %></td> <td><%=bb.getLevelnum() %></td> <td><%=bb.getRoomnum() %></td> <td><%=bb.getStunum() %></td> <td><a href="ShowBuildingsClServlet?type=update&buildingno=<%=bb.getBno() %>&yno=<%=yb.getYno()%>">修改</a></td> <td><a href="ShowBuildingsClServlet?type=delete&buildingno=<%=bb.getBno() %>&yno=<%=yb.getYno()%>&pageNow=<%=pageNow%>">删除</a></td>
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
		  <tr>
             <td align="center" colspan="9"  height="5"><form action="/emp/queryByBuildingno.do" method="post">输入楼号：<input type="text" name="buildingno" value=""/><input type="hidden" name="yno" value="<%=yb.getYno()%>"/><input type="submit" name="submit" value="查询"/><input type="button" name="restore" onclick="return restore()" value="恢复"/></form></td> 
           
          </tr>
		<tr>
    <td colspan="9" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="ShowBuildingsClServlet?type=fenye&yno=<%=yb.getYno()%>&pageNow=<%=i %>">[<%=i%>]</a>
    <%
    }
     %>
     </td>
  </tr>

</table> 
</td>
</tr>
</table></td>

</tr> 
</table></td> </td> <td width="150" height="94"></td>
</tr>


<tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
  
  </table>
  </body>
</html>
