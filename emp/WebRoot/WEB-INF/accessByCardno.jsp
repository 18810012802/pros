
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<AccessToRecordForm> al=(ArrayList)request.getAttribute("al");
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
	<script type="text/javascript">
	
	</script>
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
 
   <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
    <td width="150"  height="94" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    
    
    
    <td>
     <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		 
	 <tr>
    <td colspan="7" align="center"><a href="/emp/access.do?type=left"><img src="images/crjl.jpg" width="149" height="63" /></a></td>
    </tr>
  <tr align="center">
   <th>园号</th>  
   <th>楼号</th>
   <th>记录号</th>
   <th>卡号</th>  
  
    
    <th>打卡时间</th> 
    <th>类型</th>
  
  
  
   
   <th>删除</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  AccessToRecordForm ib=(AccessToRecordForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getYno() %></td> <td><%=ib.getBuildingno() %></td>  <td><%=ib.getRecordno() %><td><%=ib.getCardno() %></td> <td><%=ib.getAccessdate() %></td><td><%=(ib.getFlag().equals("1")?"进入":"离开")%></td> 
		  
		  <td><a href="/emp/access.do?type=deleteByCardno&recordno=<%=ib.getRecordno()%>">删除</a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="13"  bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
		 
		<tr>
    <td colspan="7" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/access.do?type=accessByCardno&pageNow=<%=i %>">[<%=i%>]</a>
    <%
    }
     %>
     </td>
  </tr>

</table> 
    
   
    </td><td width="150" height="94"></td>
    </tr> <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
    </table>
    </body>
    </html>
    
  
