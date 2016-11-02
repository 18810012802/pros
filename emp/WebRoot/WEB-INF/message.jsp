
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<MessageForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
String type=((String[])request.getAttribute("pageCount"))[1];
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
		 
	<tr> <td align="center" colspan="8"> <img src="images/lygl3.jpg" width="140"/></td> </tr>   
  <tr align="center">
   <th>留言号</th>  
   <th>发送者</th>
   <th>接收者</th>
   <th>主题</th> 
    <th>邮箱</th>   
    <th>发送时间</th>    
     <th>删除</th>  
    <th>查看详情</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  MessageForm ib=(MessageForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getMesno() %></td> <td><%=ib.getSender() %></td>  <td><%=ib.getGetter() %><td><%=ib.getTitle() %></td><td><%=ib.getEmail() %></td> <td><%=ib.getMestime() %></td>
		  		  <td><a href="/emp/message.do?type=deleteInfo&mesno=<%=ib.getMesno() %>">删除</a></td> 
		  <td><a href="/emp/message.do?type=selectDetail&mesno=<%=ib.getMesno() %>">查看详情 </a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="13"  bgcolor="#F0F0F0">
             <form action="/emp/message.do?type=selectByBase" method="post">
             请选择查询依据：
       <select name="title"><option value="all">全部</option><option value="mesno">留言号</option><option value="sender">发送者</option>
       <option value="getter">接收者</option><option value="mestime">留言时间</option>
       <option value="title">留言主题</option></select>
             
             
             请输入查询内容：<input type="text" size="15" name="mescon"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="13" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/message.do?type=<%=type %>&pageNow=<%=i %>">[<%=i%>]</a>
    <%
    }
     %>
     </td>
  </tr>

</table> 
    
   
    </td><td width="100" height="94"></td>
    </tr> <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
    </table>
    </body>
    </html>
    
  
