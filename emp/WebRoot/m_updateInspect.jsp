<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 //UserForm uf=(UserForm)request.getAttribute("uf"); 
 InspectForm iff=(InspectForm)request.getAttribute("iff");
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
	<style type="text/css">
	
 
	body {
   font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        /* background: #E6EAE9; */
    }

  #mytable {
   width: 520px;
   padding: 0;
   margin: 0 0 0 10;
   }
 /* .elegant-aero {
 float:left;
margin-left:0;
margin-top:0;
margin-right:100px;
max-width: 800px;
background: #D2E9FF;
padding: 20px 300px 20px 20px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
 
} 
.elegant-aero h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 10px 10px 10px 20px;
display: block;
background: #C0E1FF;
border-bottom: 1px solid #B8DDFF;
margin: -20px -20px 15px;
}
.elegant-aero h1>span {
display: block;
font-size: 11px;
}
.elegant-aero label>span {
float: left;
margin-top: 5px;
color: #5E5E5E;
}
.elegant-aero label {
display: block;
margin: 0px 0px 5px;
}
.elegant-aero label>span {
float: left;
width: 20%;
text-align: right;
padding-right: 15px;
margin-top: 5px;
font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
color: #888;
width: 80%;
padding: 0px 0px 0px 5px;
border: 1px solid #C5E2FF;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
box-shadow: inset 0px 1px 6px #ECF3F5;
font: 200 12px/25px Arial, Helvetica, sans-serif;
height: 30px;
line-height:15px;
margin: 2px 6px 16px 0px;
}
.elegant-aero textarea{
height:100px;
padding: 5px 0px 0px 5px;
width: 50%;
}
.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 80%;
} */

.elegant-aero {
margin-left:0;
margin-top:0;
margin-right:auto;
max-width: 700px;
background: #D2E9FF;
padding: 20px 20px 20px 20px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}
.elegant-aero h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 10px 10px 10px 20px;
display: block;
background: #C0E1FF;
border-bottom: 1px solid #B8DDFF;
margin: -20px -20px 15px;
}
.elegant-aero h1>span {
display: block;
font-size: 11px;
}
.elegant-aero label>span {
float: left;
margin-top: 5px;
color: #5E5E5E;
}
.elegant-aero label {
display: block;
margin: 0px 0px 5px;
}
.elegant-aero label>span {
float: left;
width: 20%;
text-align: right;
padding-right: 15px;
margin-top: 5px;
font-weight: bold;
}
.elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
color: #888;
width: 70%;
padding: 0px 0px 0px 5px;
border: 1px solid #C5E2FF;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
box-shadow: inset 0px 1px 6px #ECF3F5;
font: 200 12px/25px Arial, Helvetica, sans-serif;
height: 30px;
line-height:15px;
margin: 2px 6px 16px 0px;
}
.elegant-aero textarea{
height:100px;
padding: 5px 0px 0px 5px;
width: 70%;
}
.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 70%;
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
.elegant-aero .button:hover{
background: #3EB1DD;
}

 #i7 { float:left;position:relative; width:620px; height:550px; overflow:hidden; margin:0 0 0 0; }  
    #i8 { position:absolute;width:620px;height:550px;}
 
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
 <form action="/emp/inspect.do?type=m_updatejsp" method="post">
 <table width="100%" height="85%" id="mytable" cellpadding="0" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
         <h1>修改卫生检查记录</h1>
          <!-- <tr>
             <td colspan="4" align="center"><a href="/emp/stu.do?type=left"><img src="images/xsxx.gif" width="149" height="63" /></a></td>
            </tr> -->
             <tr>
            <td colspan="4" align="right">&nbsp;</td>
            </tr>
        
            
              <tr>
            <td width="25%" align="right">*园&nbsp;&nbsp;&nbsp;号：</td>
            <td width="25%"><input name="yno" type="text" size="15" value="<%=iff.getYno() %> "readonly/></td>
             <td width="25%" align="right">*楼&nbsp;&nbsp;&nbsp;号：</td>
            <td width="25%"><input name="bno" type="text" size="15" value="<%=iff.getBno() %> " readonly/></td>
          </tr>
           
              <tr>
           
          </tr>
          
           
              <tr>
            <td width="25%" align="right">*寝&nbsp;室&nbsp;号：</td>
            <td width="25%"><input name="dormno" type="text" size="15" value="<%=iff.getDormno() %> " readonly/></td>
             <td width="25%" align="right">*日&nbsp;&nbsp;期：</td>
            <td width="25%"><input name="datetime" type="text" size="15" value="<%=iff.getDatetime() %>" readonly/></td>
          </tr>
          
          
          <tr>
           
          </tr>
          
         <tr> 
       <td width="25%" align="right">物品摆放：</td>
       <td width="25%"><input name="wpbf" type="text" size="15" value="<%=iff.getWpbf() %>" /></td>
        <td width="25%" align="right">住宿卡：</td>
       <td width="25%"><input  name="zsk" type="text" size="15" value="<%=iff.getZsk() %>"/></td>
     </tr> 
     <tr> 
       <td width="25%" align="right">空气气味：</td>
       <td width="25%"><input name="kqqw" type="text" size="15" value="<%=iff.getKqqw() %>" /></td>
        <td width="25%" align="right">地面阳台：</td>
       <td width="25%"><input  name="dmyt" type="text" size="15" value="<%=iff.getDmyt() %>"/></td>
     </tr> 
      <tr> 
       <td width="25%" align="right">被子枕头：</td>
       <td width="25%"><input name="bzzt" type="text" size="15" value="<%=iff.getBzzt() %>" /></td>
        <td width="25%" align="right">铺面床围：</td>
       <td width="25%"><input  name="pmcw" type="text" size="15" value="<%=iff.getPmcw() %>"/></td>
     </tr> 
       <tr> 
       <td width="25%" align="right">床下洗漱间：</td>
       <td width="25%"><input  name="cxxsj" type="text" size="15" value="<%=iff.getCxxsj() %>" /></td>
        <td width="25%" align="right">桌面：</td>
       <td width="25%"><input  name="zm" type="text" size="15" value="<%=iff.getZm() %>"/></td>
     </tr>
      <tr> 
       <td width="25%" align="right">门窗灯橱：</td>
       <td width="25%"><input  name="mcdc" type="text" size="15" value="<%=iff.getMcdc() %>"/></td>
        <td width="25%" align="right">墙壁书架：</td>
       <td width="25%"><input  name="qbsj" type="text" size="15" value="<%=iff.getQbsj() %>"/></td>
     </tr>  
         
          
         
          <tr>
         
            <td colspan="3" align="center"> <input class="button" id="button" type="submit" value="修改"/></td>
          </tr>
           
        </table>
        </form></div>
   
   </div></div>
   
  
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
