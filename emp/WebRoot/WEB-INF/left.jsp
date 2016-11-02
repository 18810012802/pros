<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="abc">
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><b>&nbsp;&nbsp;&nbsp;宿舍管理</b></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="ShowYardsClServlet?type=fenye&pageNow=1">宿舍分布</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="ShowStuClServlet?type=step">宿舍入住</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/inspect.do?type=left">宿舍卫生</a>&nbsp;&nbsp;</td>
  </tr>
   <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><b>&nbsp;&nbsp;&nbsp;首页管理</b></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/news.do?type=left">通告管理</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
   <tr>
    <td align="center">&nbsp;</td>
  </tr>
    <td align="center">&nbsp;<a href="/emp/message.do?type=left">留言管理</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="ShowYardsClServlet?type=downloadImage">分 布 图</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><b>&nbsp;&nbsp;&nbsp;人员管理</b></td>
  </tr>
  
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/stu.do?type=left">学生信息</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/updateUser.do?type=left">雇员信息</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/access.do?type=left">出入记录</a>&nbsp;&nbsp;</td>
  </tr>
  
   <tr>
 
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><b>&nbsp;&nbsp;&nbsp;物品管理</b></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/property1.do?type=left">物品清单</a>&nbsp;&nbsp;</td>
  </tr>
 
 
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/repaire.do?type=left">报损记录</a>&nbsp;&nbsp;</td>
  </tr>
   <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><b>&nbsp;&nbsp;&nbsp;规章管理</b></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/ShowYardsClServlet?type=showRules">管理制度</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;<a href="/emp/ShowYardsClServlet?type=showPunish">处罚规则</a>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  
</table>