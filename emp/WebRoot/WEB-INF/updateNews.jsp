<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
NewsForm pf=(NewsForm)request.getAttribute("nf");
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
	
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
   <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
    <td width="150"  height="94" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    <td>
    <div align="center">
    <form enctype="multipart/form-data" action="/emp/news.do?type=updateNews" method="post">
<table width="70%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
           <tr>
             <td colspan="2" align="center"><a href="/emp/news.do?type=left"><img src="images/news1.jpg" width="149" height="63" /></a></td>
            </tr>
            
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
           <tr>
            <td width="50%" align="right">通&nbsp;告&nbsp;号：</td>
            <td width="50%"><input name="newsno" type="text" size="15" value="<%=pf.getNewsno() %>" readonly/></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
             <tr>
            <td width="50%" align="right">题&nbsp;&nbsp;目：</td>
            <td width="50%"><input name="title" type="text" size="15" value="<%=pf.getTitle() %>"/></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
            <tr>
            <td width="50%" align="right">附&nbsp;&nbsp;件：</td>
          <td width="50%">
 <input type="file" name="attach"/></td>
              </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
           </tr>
          <tr>
          
            <td width="50%"align="right">发布时间：</td>
            <td width="50%"><input name="newstime" type="text" size="15" value="<%=pf.getNewstime() %>" /></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
         
          <tr>
                 <td width="50%"align="right">文&nbsp;件&nbsp;源：</td>
            <td width="50%"><input name="newscon" type="text" size="15" value="<%=pf.getNewscon() %>" /></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
         <tr>
             <td width="50%" align="right">类&nbsp;&nbsp;型：</td>
       <td width="50%">
       <select name="type1"><option value="宿舍改造" >宿舍改造</option>
       <option value="宿舍文化" >宿舍文化</option>
       <option value="宿舍管理" >宿舍管理</option><option value="媒体关注" >媒体关注</option><option value="">其他</option></select></td>
          </tr>
           <tr>         
            <td colspan="2" align="center"><input type="image"  src="images/xa1.gif" width="39" /></td>
          </tr>  
               
        </table>
       </form>      
   </div>   
    </td> <td width="150" height="94"></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>
  </body>
</html>
