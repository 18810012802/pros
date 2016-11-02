<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<NewsForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
String[] b=(String[])request.getAttribute("b");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'grade.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	
<style type="text/css">
body {
   font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        /* background: #E6EAE9; */
    }

  #mytable {
   width: 780px;
   padding: 0;
   margin: 0 auto;
   }
   caption {
   padding: 0 0 5px 0;
   width: 780px;     
   font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
  text-align: center;
  }
  th {
  font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
 color: #4f6b72;
  border-left: 1px solid #C1DAD7;
  border-right: 1px solid #C1DAD7;
  border-bottom: 1px solid #C1DAD7;
  border-top: 1px solid #C1DAD7;
  letter-spacing: 2px;
   text-transform: uppercase;
   text-align: center;
   padding: 6px 6px 6px 12px;
    background: #CAE8EA url(images/bg_header.jpg) no-repeat; 
}th.nobg {
   border-top: 0;
   border-left: 0;
   border-right: 1px solid #C1DAD7;
   background: none;
}
#mytable td {    
  border-right: 1px solid #C1DAD7;
  border-bottom: 1px solid #C1DAD7;
  background: #fff;
  font-size:11px;
  padding: 6px 6px 6px 12px;
 color: #4f6b72; 
  }
  #mytable td.alt {
 background: #F5FAFA;color: #797268;
 }
 .spec {
  border-left: 1px solid #C1DAD7;
  border-top: 0;
  background: #fff url(images/bullet1.gif) no-repeat;
 font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;}.specalt {
  border-left: 1px solid #C1DAD7;
  border-top: 0;
  background: #f5fafa url(images/bullet2.gif) no-repeat;
  font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
   color: #797268;}
   html>body td{ font-size:11px;}
   .elegant-aero1{
   float:left;
   margin-left:0;margin-top:0;
   width:100%;
max-width: 1100px;
background: #D2E9FF;
padding: 0px 0px 0px 0px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}

#i7 { float:left;position:relative; width:780px; height:440px; overflow:hidden; margin:0 0 0 285; }  
    #i8 { position:absolute;width:780px;height:440px;}
 #i9 { float:left;position:relative; width:160px; height:450px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }

	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
     <%--  <div id="i9"><div id="i10">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div> --%>
   
 <div id="i7"><div id="i8">
   
   <div class="elegant-aero"> 
    <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
		 
	
  <tr align="center">
   <th>记录号</th>  
   <th>题目</th>
   <th>源文件</th>
   <th>类型</th>  
  
    
    <th>发布时间</th> 
    
  
  
  
  
   
    <th>下载附件</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  NewsForm ib=(NewsForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getNewsno() %></td> <td><%=ib.getTitle() %></td>  <td><%=(ib.getNewscon()==null?"无":ib.getNewscon()) %><td><%=(ib.getType1()==null?"其他":ib.getType1()) %></td> <td><%=ib.getNewstime() %></td>
		  		  <td><a href="/emp/news.do?type=selectAttachment&attachment=<%=ib.getAttachment() %>&newscon=<%=ib.getNewscon() %>"><%=(ib.getAttachment()==null?"无附件":"下载附件")%></a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="13"  bgcolor="#F0F0F0"><form action="/emp/news.do?type=selectByBase" method="post">
             请选择查询依据：
       <select name="type1"><option value="newsno">记录号</option><option value="newstime">发布时间</option>
       <option value="type1">类型</option><option value="title">题目</option><option value="newscon">文件名</option></select>
             
             
             请输入查询内容：<input type="text" size="15" name="newscon"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="13" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/news.do?type=noticesByBase&pageNow=<%=i %>&base=<%=b[0] %>&basecon=<%=b[1] %>">[<%=i%>]</a>
    <%
    }
     %>
     </td>
  </tr>

</table> 
 </div></div>
  
   
   </div>
  
  

  
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
