<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <form action="/emp/inspect.do?type=updatejsp" method="post">
<table width="60%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><img src="images/ssws.gif" width="149" height="63" /></td>
            </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td width="50%" align="right">*日&nbsp;&nbsp;&nbsp;&nbsp;期：</td>
            <td width="50%"><input name="datetime" type="text" size="15" value="<%=iff.getDatetime() %>" readonly/></td>
          </tr>
            
              <tr>
            <td width="50%" align="right">*园&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="yno" type="text" size="15" value="<%=iff.getYno() %> "readonly/></td>
          </tr>
           
              <tr>
            <td width="50%" align="right">*楼&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
            <td width="50%"><input name="bno" type="text" size="15" value="<%=iff.getBno() %> " readonly/></td>
          </tr>
          
           
              <tr>
            <td width="50%" align="right">*寝&nbsp;室&nbsp;号：</td>
            <td width="50%"><input name="dormno" type="text" size="15" value="<%=iff.getDormno() %> " readonly/></td>
          </tr>
          
          
          <tr>
            <td width="50%" align="right">物品摆放：</td>
            <td width="50%"><input name="wpbf" type="text" size="15" value="<%=iff.getWpbf() %>" /></td>
          </tr>
          
          <tr>
            <td width="50%" align="right">住&nbsp;宿&nbsp;卡：</td>
            <td width="50%"><input name="zsk" type="text" size="15" value="<%=iff.getZsk() %>" /></td>
          </tr>
          
             <tr>
            <td width="50%" align="right">空气气味：</td>
            <td width="50%"><input name="kqqw" type="text" size="15" value="<%=iff.getKqqw()%>"/></td>
          </tr>
         
          <tr>
          
            <td align="right">地面阳台：</td>
            <td><input name="dmyt" type="text" size="15" value="<%=iff.getDmyt()%>" /></td>
          </tr>
         
          <tr>
           
        
            <td align="right">被子枕头：</td>
            <td><input name="bzzt" type="text" size="23" value="<%=iff.getBzzt()%>" /></td>
          </tr>
        
          <tr>
            <td align="right">铺面床围：</td>
            <td><input name="pmcw" type="text" size="15" value="<%=iff.getPmcw() %>"/></td>
          </tr>
        
          <tr>
            <td align="right">床下洗簌间：</td>
            <td><input name="cxxsj" type="text" size="23" value="<%=iff.getCxxsj() %>"/></td>
          </tr>
         <tr>
            <td align="right">桌面：</td>
            <td><input name="zm" type="text" size="23" value="<%=iff.getZm() %>"/></td>
          </tr>
          <tr>
            <td align="right">门窗灯橱：</td>
            <td><input name="mcdc" type="text" size="15" value="<%=iff.getMcdc() %>"/></td>
          </tr>
           <tr>
            <td align="right">墙壁书架：</td>
            <td><input name="qbsj" type="text" size="15" value="<%=iff.getQbsj() %>"/></td>
          </tr>
           <tr>
            <td align="right">*总&nbsp;&nbsp;&nbsp;&nbsp;分：</td>
            <td><input name="sum" type="text" size="15" value="<%=iff.getSum() %>" readonly/></td>
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
