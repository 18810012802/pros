<%@ page language="java" import="java.util.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
BuildingBean bb=(BuildingBean)request.getAttribute("buildingInfo");
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
<form action="/emp/updateBuilding.do" method="post">
<table width="50%" border="1" align="center" cellpadding="0" cellspacing="0" class="abc">
          <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="2" align="center"><font size="2"><b>楼信息</b></font></td>
            </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
             <tr>
            <td width="53%" align="right">*园号：</td>
            <td width="47%"><input name="yno" type="text" size="15" value="<%=bb.getYno() %>" readonly/></td>
          </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td width="53%" align="right">*楼号：</td>
            <td width="47%"><input name="buildingno" type="text" size="15" value="<%=bb.getBno() %>" readonly/></td>
          </tr>
             <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
              <tr>
            <td width="53%" align="right">类型：</td>
            <td width="47%"><input name="type" type="text" size="15" value="<%=bb.getType() %>"/></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td width="53%" align="right">*管理员：</td>
            <td width="47%"><input name="manager" type="text" size="15" value="<%=bb.getManager() %>" readonly/></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
             <tr>
            <td width="53%" align="right">*楼层数：</td>
            <td width="47%"><input name="levelnum" type="text" size="15" value="<%=bb.getLevelnum() %>"  readonly/></td>
          </tr>
          <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
          
            <td align="right">*房间数：</td>
            <td><input name="roomnum" type="text" size="15" value="<%=bb.getRoomnum() %>"  readonly/></td>
          </tr>
          <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
           
        
            <td align="right">*人数：</td>
            <td><input name="stunum" type="text" size="15" value="<%=bb.getStunum() %>"  readonly/></td>
          </tr>
          <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
          <tr>
            <td align="right">*联系电话：</td>
            <td><input name="phone" type="text" size="15" value="<%=bb.getPhone() %>"  readonly/></td>
          </tr>
          
          <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
                  <tr>
          
            <td colspan="2" align="center"><input type="submit" name="Submit2" value="修改楼信息" /></td>
          </tr>
           <tr>
            <td colspan="2" align="right">&nbsp;</td>
            </tr>
            <td colspan="2" align="center"><a href="ShowYardsClServlet?type=showDetail&yno=<%=bb.getYno() %>">返回查询</a></td>
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
        