
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<PropertyForm> al=(ArrayList)request.getAttribute("al");
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
    
    
    
    <td><form enctype="multipart/form-data" action="/emp/property1.do?type=addInfo" method="post"><div align="center">
   <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
        
    <tr>
    <td colspan="4" align="center"><img src="images/tjjl.gif" width="149" height="63" /></td>
    </tr>
   
    <tr> 
     <td width="25%" align="right">物品号：</td>
       <td width="25%"><input  name="prono" type="text" size="15" value="自增长" /></td>
    
       <td width="25%" align="right">图片：</td>
       <td width="25%">

<input type="file" name="photo"/></td>


   
       
     </tr> 
    <tr> 
     <td width="25%" align="right">物品名称：</td>
       <td width="25%"><input  name="proname" type="text" size="15" value="" /></td>
    
       <td width="25%" align="right">价值：</td>
       <td width="25%"><input name="value" type="text" size="15" value="" /></td>
       
     </tr> 
     <tr> 
      <td width="25%" align="right">注册时间：</td>
       <td width="25%"><input name="registertime" type="text" size="15" value="" /></td>
      
        <td width="25%" align="right">描述：</td>
         <td width="25%"><input name="description" type="text" size="15" value="" /></td>
            </tr> 
    
      
      <tr>
        <td colspan="4" align="center">
            <input type="image" src="images/add3.png" border="0" width="35" /></td>
      </tr>
      </table></div></form>
     <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		 
	
  <tr align="center">
   <th>物品号</th>  
   <th>物品名称</th>
   <th>注册日期</th>
   <th>价值</th>  
  
    
    <th>描述</th> 
    <th>修改</th>
  
  
  
   
   <th>删除</th>
    <th>查看图片</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  PropertyForm ib=(PropertyForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getProno() %></td> <td><%=ib.getProname() %></td>  <td><%=ib.getRegistertime() %><td><%=ib.getValue() %></td> <td><%=ib.getDescription() %></td>
		   <td><a href="/emp/property1.do?type=updateInfo&prono=<%=ib.getProno() %>">修改</a></td> 
		  <td><a href="/emp/property1.do?type=deleteInfo&prono=<%=ib.getProno() %>">删除</a></td> 
		  <td><a href="/emp/property1.do?type=selectImage&image2=<%=ib.getImage2() %>">查看图片</a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="13"  bgcolor="#F0F0F0"><form action="/emp/property1.do?type=selectByProname" method="post">请输入物品名称：<input type="text" size="15" name="proname"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="13" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/property1.do?type=left&pageNow=<%=i %>">[<%=i%>]</a>
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
    
  
