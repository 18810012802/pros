<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
UserForm uf=(UserForm)session.getAttribute("userForm");
if(uf==null)
{

response.setContentType("text/html; charset=utf-8");
 response.sendRedirect("/emp/news.do?type=sysmanager");
 return;
}
%>

<table width="100%" height="100" border="0" cellpadding="0" cellspacing="0" class="abc">
  <tr>
    <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="7"><img src="images/logo2.jpg" width="90" height="" /></td>
    <td><img src="images/19.png" width="700" height="90"/></td>
    <td><p><img src="images/zhanghao.png" width="20" height="20" /><a href="ShowEmployeeInfoSevlet?userno=<%=uf.getUserno()%>">【我的账号】</a>
        <p class="abc"><img src="images/tuichu.jpg" width="20" height="20" /><a href="/emp/news.do">【返回首页】</a></td>
  </tr>
  <tr>
    <td height="5" colspan="9" bgcolor="#F0F0F0">&nbsp;</td>
  </tr>
 
</table>