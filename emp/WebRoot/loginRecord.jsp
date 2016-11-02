<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//UserForm uf=(UserForm)request.getAttribute("uf"); 
ArrayList<LoginRecordForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
String type=((String[])request.getAttribute("pageCount"))[1];
String base=((String[])request.getAttribute("pageCount"))[2];
String con=((String[])request.getAttribute("pageCount"))[3];
//System.out.println(pageCount);
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
	
	<style type="text/css">
	
	.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 138;
}
.elegant-aero .button{
padding: 10px 30px 10px 30px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button2{
padding: 1px 3px 1px 3px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button:hover{
background: #3EB1DD;
}
.elegant-aero .button2:hover{
background: #3EB1DD;
}
	
	
	
	
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

#i7 { float:left;position:relative; width:780px; height:650px; overflow:hidden; margin:0 0 0 285; }  
    #i8 { position:absolute;width:780px;height:650px;}
 #i9 { float:left;position:relative; width:160px; height:650px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }
	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
     <%--  <div id="i3"><div id="i4">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div> --%>
   
 <div id="i7"><div id="i8">
   
 
   
   <div class="elegant-aero"> 
   
 
 <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
   <tr>
   
   <th>记录号</th>  
   <th>用户号</th>  
   <th>登录日期</th>
   <th>登录时间</th>  
   <th>用户类型</th>
  
   <th>删除</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  LoginRecordForm ib=(LoginRecordForm)al.get(i);
		  if(i%2==0)
		  {
		 %>
		 <tr align="center">
		 
		  <td><%=ib.getRecordno() %></td><td><%=ib.getUserno() %></td> <td><%=ib.getLogindate() %></td>
		   <td><%=ib.getLogintime() %></td> <td><%=ib.getType() %></td>
		   <td><a href="/emp/loginRecord.do?type=m_deleteInfo&recordno=<%=ib.getRecordno()%>">删除</a></td> 
		 </tr>
		 <%
		 }else{
		  %>
		 <tr align="center">
		 
		  <td class="alt"><%=ib.getRecordno() %></td><td class="alt"><%=ib.getUserno() %></td> <td class="alt"><%=ib.getLogindate() %></td>
		   <td class="alt"><%=ib.getLogintime() %></td> <td class="alt"><%=ib.getType() %></td>
		   <td class="alt"><a href="/emp/loginRecord.do?type=m_deleteInfo&recordno=<%=ib.getRecordno()%>">删除</a></td> 
		 </tr>
		 <%
		 
		 }
		 
		 
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="17"  bgcolor="#F0F0F0">
             <form action="/emp/loginRecord.do?type=m_selectByBase" method="post">
      请选择查询依据：
       <select name="recordno"><option value="all">全部</option><option value="recordno">记录号</option><option value="userno">用户号</option>
       <option value="logintime">日期</option><option value="type">类别</option>
      </select>
              
             
             请输入查询内容：
             <input type="text" size="15" name="userno"/><!-- <input width="25"  type="image" src="images/cx.JPG"/> -->
             <input class="button2" type="submit" value="查询"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="17" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/loginRecord.do?type=<%=type %>&pageNow=<%=i %>&base=<%=base %>&con=<%=con %>">[<%=i%>]</a>
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
