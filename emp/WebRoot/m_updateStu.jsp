<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 //UserForm uf=(UserForm)request.getAttribute("uf"); 
 StuForm iff=(StuForm)request.getAttribute("sf");
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
 <form action="/emp/stu.do?type=m_updateStu" method="post">
 <table width="100%" height="85%" id="mytable" cellpadding="0" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
         <h1>修改学生信息</h1>
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
            <td width="25%"><input name="buildingno" type="text" size="15" value="<%=iff.getBuildingno() %> " readonly/></td>
          </tr>
           
              <tr>
           
          </tr>
          
           
              <tr>
            <td width="25%" align="right">*寝&nbsp;室&nbsp;号：</td>
            <td width="25%"><input name="dormno" type="text" size="15" value="<%=iff.getDormno() %> " readonly/></td>
             <td width="25%" align="right">*床&nbsp;位&nbsp;号：</td>
            <td width="25%"><input name="bedno" type="text" size="15" value="<%=iff.getBedno() %>" readonly/></td>
          </tr>
          
          
          <tr>
           
          </tr>
          
          <tr>
            <td width="25%" align="right">学&nbsp;&nbsp;&nbsp;院：</td>
            <td width="25%"><input name="seminary" type="text" size="15" value="<%=iff.getSeminary() %>" /></td>
            <td width="25%" align="right">专&nbsp;&nbsp;&nbsp;业：</td>
            <td width="25%"><input name="major" type="text" size="15" value="<%=iff.getMajor()%>"/></td>
          </tr>
          
             <tr>
            
          </tr>
         
          <tr>
          
            <td align="right">*学&nbsp;&nbsp;&nbsp;号：</td>
            <td><input name="stuno" type="text" size="15" value="<%=iff.getStuno()%>" readonly/></td>
            <td align="right">姓&nbsp;&nbsp;&nbsp;名：</td>
            <td><input name="name" type="text" size="15" value="<%=iff.getName()%>" /></td>
          </tr>
         
          <tr>
           
        
            
          </tr>
        
          <tr>
            <td align="right">性&nbsp;&nbsp;&nbsp;别：</td>
            <td><input name="sex" type="text" size="15" value="<%=iff.getSex() %>"/></td>
            <td align="right">电&nbsp;&nbsp;&nbsp;话：</td>
            <td><input name="phone" type="text" size="15" value="<%=iff.getPhone() %>"/></td>
          </tr>
        
          <tr>
            
          </tr>
         <tr>
            <td align="right">入住时间：</td>
            <td><input name="intime" type="text" size="15" value="<%=iff.getIntime() %>"/></td>
             <td align="right">角&nbsp;&nbsp;&nbsp;色：</td>
             <td width="25%"><select name="role" ><option value="head" <%=(iff.getRole().equals("head")?"selected":"")%>>舍长<option value="member" <%=(iff.getRole().equals("member")?"selected":"")%>>舍员</select></td>
            
          </tr>
          <tr>
                        
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