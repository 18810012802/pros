<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
RepaireForm ub=(RepaireForm)request.getAttribute("rp");
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
    <form action="/emp/repaire.do?type=update" method="post">
<table width="60%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><a href="/emp/repaire.do?type=left"><img src="images/bxjl.PNG" width="149" height="63" /></a></td>
            </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td width="50%" align="right">*记录号：</td>
            <td width="50%"><input name="recordno" type="text" size="15" value="<%=ub.getRecordno() %>" readonly/></td>
          </tr>
            
              <tr>
            <td width="50%" align="right">园&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="yno" type="text" size="15" value="<%=ub.getYno() %> "/></td>
          </tr>
           
              <tr>
            <td width="50%" align="right">楼&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="buildingno" type="text" size="15" value="<%=ub.getBuildingno() %> " /></td>
          </tr>
          
                     
              <tr>
            <td width="50%" align="right">寝&nbsp;室&nbsp;号：</td>
     <td width="50%"><input name="dormno" type="text" size="15" value="<%=ub.getDormno() %> " /></td>
               </tr>
          
          
          <tr>
            <td width="50%" align="right">物&nbsp;品&nbsp;号：</td>
            <td width="50%"><input name="prono" type="text" size="15" value="<%=ub.getProno() %>" /></td>
          </tr>
          
          <tr>
            <td width="50%" align="right">报修原因：</td>
            <td width="50%"><input name="cause" type="text" size="15" value="<%=ub.getCause() %>" /></td>
          </tr>
          
             <tr>
            <td width="50%" align="right">提交时间：</td>
            <td width="50%"><input name="subtime" type="text" size="15" value="<%=ub.getSubtime() %>"  /></td>
          </tr>
         
          <tr>
          
            <td align="right">解决时间：</td>
            <td><input name="solvetime" type="text" size="15" value="<%=ub.getSolvetime()%>" /></td>
          </tr>
         
         
        
          <tr>
            <td align="right">报修费用：</td>
            <td><input name="cost" type="text" size="15" value="<%=ub.getCost()%>"/></td>
          </tr>
        
          <tr>
            <td align="right">备注：</td>
            <td><input name="remark" type="text" size="15" value="<%=(ub.getRemark()==null?"":ub.getRemark())%>"/></td>
          </tr>
          
       
         
          <tr>
         
            <td colspan="2" align="center"><input type="image" name="Submit2" src="images/xa1.gif" width="39"  value="修改账户信息" /></td>
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