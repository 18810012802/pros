
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<NewsForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);

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
    
    
    
    <td><form enctype="multipart/form-data" action="/emp/news.do?type=addInfo" method="post"><div align="center">
   <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
        
    <tr>
    <td colspan="4" align="center"><img src="images/news1.jpg" width="149" height="63" /></td>
    </tr>
   
    <tr> 
     <td width="25%" align="right">记录号：</td>
       <td width="25%"><input  name="newsno" type="text" size="15" value="自增长" readonly/></td>
    
       <td width="25%" align="right">附件：</td>
       <td width="25%">

<input type="file" name="attach"/></td>
     </tr> 
   
     <tr> 
      <td width="25%" align="right">题目：</td>
       <td width="25%"><input name="title" type="text" size="15" value="" /></td>
      
        <td width="25%" align="right">文件源：</td>
         <td width="25%"><input name="newscon" type="text" size="15" value="" /></td>
            </tr> 
     <tr> 
     <td width="25%" align="right">发布时间：</td>
       <td width="25%"><input  name="newstime" type="text" size="15" value="" /></td>
    
       <td width="25%" align="right">类型：</td>
       <td width="25%"><select name="type1"><option value="宿舍改造">宿舍改造</option><option value="宿舍文化">宿舍文化</option>
       <option value="宿舍管理">宿舍管理</option><option value="媒体关注">媒体关注</option><option value="">其他</option></select></td>
       
     </tr> 
      
      <tr>
        <td colspan="4" align="center">
            <input type="image" src="images/add3.png" border="0" width="35" /></td>
      </tr>
      </table></div></form>
     <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		 
	
  <tr align="center">
   <th>记录号</th>  
   <th>题目</th>
   <th>源文件</th>
   <th>类型</th>  
  
    
    <th>发布时间</th> 
    
  
  
  
    <th>修改</th>
   <th>删除</th>
   
    <th>下载附件</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  NewsForm ib=(NewsForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getNewsno() %></td> <td><%=ib.getTitle() %></td>  <td><%=(ib.getNewscon()==null?"无":ib.getNewscon()) %><td><%=(ib.getType1()==null?"其他":ib.getType1()) %></td> <td><%=ib.getNewstime() %></td>
		   <td><a href="/emp/news.do?type=updateInfo&newsno=<%=ib.getNewsno() %>">修改</a></td> 
		  <td><a href="/emp/news.do?type=deleteInfo&newsno=<%=ib.getNewsno() %>">删除</a></td> 
		  <td><a href="/emp/news.do?type=selectAttachment&attachment=<%=ib.getAttachment() %>&newscon=<%=ib.getNewscon() %>"><%=(ib.getAttachment()==null?"无附件":"下载附件")%></a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="13"  bgcolor="#F0F0F0"><form action="/emp/news.do?type=selectByNewsno" method="post">请输入记录号：<input type="text" size="15" name="newsno"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="13" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/news.do?type=left&pageNow=<%=i %>">[<%=i%>]</a>
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
    
  
