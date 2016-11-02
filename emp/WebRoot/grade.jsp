<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 ArrayList<InspectForm> al=(ArrayList<InspectForm>)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]); 
StuForm sf=(StuForm)request.getAttribute("sf");
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
 <tr><td class="alt">园号：<%=sf.getYno() %></td><td class="alt">楼号：<%=sf.getBuildingno() %></td><td class="alt">寝室号：<%=sf.getDormno() %></td>
 
 </tr></table>
 <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
 
<tr>
		 <th rowspan="2">日期</th>
  
    <th colspan="10" align="center">各&nbsp;项&nbsp;等&nbsp;级&nbsp;得&nbsp;分</th>
    <th rowspan="2">总分</th>
    
    
  </tr>
<tr>
   <th>物品摆放</th>  
   <th>住宿卡</th>
   <th>空气气味</th> 
   <th>地面阳台</th>
   <th>被子枕头</th>  
   <th>铺面床围</th>
   <th>床下洗簌间</th>  
   <th>桌面</th>
   <th>门窗灯橱</th>  
   <th>墙壁书架</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  InspectForm ib=(InspectForm)al.get(i);
		  if((i%2)==0)
		  {
		   %>
		 <tr align="center">
		 
		  <td><%=ib.getDatetime() %></td>  <td><%=ib.getWpbf() %></td>
		  <td><%=ib.getZsk()%></td> <td><%=ib.getKqqw() %></td> <td><%=ib.getDmyt()%></td> <td><%=ib.getBzzt() %></td> <td><%=ib.getPmcw()%></td>
		   <td><%=ib.getCxxsj() %>
		  </td> <td><%=ib.getZm()%></td> <td><%=ib.getMcdc() %></td> <td><%=ib.getQbsj()%></td><td><%=ib.getSum()%></td>
		 
		  		 </tr>
		 <%
		  }else
		  
		  {
		   %>
		 <tr align="center">
		 
		 <td class="alt"><%=ib.getDatetime() %></td> <td class="alt"><%=ib.getWpbf() %></td> <td class="alt"><%=ib.getZsk()%></td> <td class="alt"><%=ib.getKqqw() %></td> 
		 <td class="alt"><%=ib.getDmyt()%></td>
		  <td class="alt"><%=ib.getBzzt() %></td> <td class="alt"><%=ib.getPmcw()%></td> <td class="alt"><%=ib.getCxxsj() %></td>
		   <td class="alt"><%=ib.getZm()%></td> <td class="alt"><%=ib.getMcdc() %></td> <td class="alt"><%=ib.getQbsj()%>
		  </td> <td class="alt"><%=ib.getSum()%></td>
		  		 </tr>
		 <%
		  }
		
		 }
		 
		  %>
		   <tr>
             <td height="5" colspan="17" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
		 
		<tr>
    <td colspan="17" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/news.do?type=grade&pageNow=<%=i %>">[<%=i%>]</a>
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
