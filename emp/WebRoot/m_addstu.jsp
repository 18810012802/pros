<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// UserForm uf=(UserForm)request.getAttribute("uf"); 
ArrayList<StuForm> al=(ArrayList)request.getAttribute("al");
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
	function confirm2()
	{
			return window.confirm("你确定要删除吗?");
		
	}
	
	
	</script>
	<style type="text/css">
	
	body {
   font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        /* background: #E6EAE9; */
    }

  #mytable {
   width: 620px;
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

#i7 { float:left;position:relative; width:620px; height:550px; overflow:hidden; margin:0 0 0 0; }  
    #i8 { position:absolute;width:620px;height:550px;}
 #i9 { float:left;position:relative; width:160px; height:550px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }
	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
      <div id="i3"><div id="i4">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div>
   
 <div id="i7"><div id="i8">
   
 
   
   <div class="elegant-aero"> 
   
 <form action="/emp/stu.do?type=addInfo" method="post">
   <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
        
  <!--   <tr>
    <td colspan="4" align="center"><img src="images/xsxx.gif" width="100" /></td>
    </tr> -->
   <tr>
    
   <td width="25%">
   <select id="yno" name="yno" onchange="getBno();">

 <option selected>宿舍园

 <option value="1">滢园
 <option value="2">沁园
 <option value="3">泓园
 <option value="4">涵园
 <option value="5">泽园
 <option value="6">汇园
 <option value="7">浩园
 <option value="8">润园
 <option value="9">浏园
</select>  
   </td>
   <td width="25%">
  <select id="bno" name="buildingno" onchange="getDormno();">

 <option selected>楼号
 </select>  
   </td>
   <td width="25%">
  <select id="dormno" name="dormno" onchange="getBedno();">
 <option selected>寝室号
 </select>  
   </td>
   
    <td width="25%">
    <select id="bedno" name="bedno" >
 <option selected>床位号
 </select>  
   </td>
    </tr>
    
    </table>
     
      <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
    
   
    <tr> 
     <td width="25%" align="right">姓名：</td>
       <td width="25%"><input  name="name" type="text" size="15" value=""/></td>
    
       <td width="25%" align="right">学号：</td>
       <td width="25%"><input name="stuno" type="text" size="15" value="" /></td>
       
     </tr> 
     <tr> 
      <td width="25%" align="right">性别：</td>
       <td width="25%"><input name="sex" type="text" size="15" value="" /></td>
      
        <td width="25%" align="right">学院：</td>
       <td width="25%"><input  name="seminary" type="text" size="15" value=""/></td>
            </tr> 
      <tr> 
      
        <td width="25%" align="right">电话：</td>
       <td width="25%"><input  name="phone" type="text" size="15" value=""/></td>
        <td width="25%" align="right">专业：</td>
       <td width="25%"><input name="major" type="text" size="15" value="" /></td>
     </tr> 
       <tr> 
        <td width="25%" align="right">入住时间：</td>
       <td width="25%"><input  name="intime" type="text" size="15" value=""/></td>
       <td width="25%" align="right">角色：</td>
       <td width="25%"><select name="role" ><option value="head">舍长<option value="member">舍员</select></td>
       
     </tr>
      
      <tr>
        <td colspan="4" align="center">
            <input type="image" src="images/add3.png" border="0" width="35" /></td>
      </tr>
      </table></form>
 
 
 <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
   <tr>
   
   <td>寝室号</td>  
   <td>床位号</td>  
   <td>学院</td>
   <td>专业</td>  
   <td>学号</td>
   <td>姓名</td>  
   <td>性别</td>
  
   <td>电话</td>
    <td>入住时间</td>  
   <td>角色</td>
    <td>修改</td>  
   <td>删除</td>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  StuForm ib=(StuForm)al.get(i);
		 %>
		 <tr align="center">
		 
		  <td><%=ib.getDormno() %></td> <td><%=ib.getBedno() %></td> <td><%=ib.getSeminary() %></td> <td><%=ib.getMajor() %></td>
		  <td><%=ib.getStuno()%></td> <td><%=ib.getName() %></td> <td><%=ib.getSex()%></td> <td><%=ib.getPhone()%></td> <td><%=ib.getIntime() %></td> <td><%=ib.getRole() %></td>
		  <td><a href="/emp/stu.do?type=updateInfo&stuno=<%=ib.getStuno()%>">修改</a></td>
		  <td><a onclick="return confirm2();" href="/emp/stu.do?type=deleteInfo&stuno=<%=ib.getStuno()%>">删除</a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="17"  bgcolor="#F0F0F0"><form action="/emp/stu.do?type=selectByStuno" method="post">请输入学生号：<input type="text" size="15" name="stuno"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="17" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/stu.do?type=left&pageNow=<%=i %>">[<%=i%>]</a>
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
