<%@ page language="java" import="java.util.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
YardBO ybb=new YardBO();
String s_pageNow=(String)request.getAttribute("abc");

int pageNow=1;
if(s_pageNow!=null)
{
pageNow=Integer.parseInt(s_pageNow);
}
ArrayList al=ybb.getYardsByPage(6,pageNow);
int pageCount=ybb.getPageCount(6);

%>
<table width="100%" border="0" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0">
   
  <tr>
 <table width="100%" border="0" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0">

<%
 YardBean yb=new YardBean();
  int time=0;
for(int i=0;i<2;i++)
{
%>
<tr>
<%
for(int j=0;j<3;j++)
{
if(time>=al.size())
{
  
  yb.setYno("none");
				yb.setYname("none");
				yb.setPno("none");
				yb.setImage("x.png");
				yb.setDesc("没有了");
      time++;
}else{
  
  yb=(YardBean)al.get(time);
   time++;
  }
%>

<td><table class="abc" width="80%" height="170" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="32%" rowspan="3"><img src="images/<%=yb.getImage()%>" width="100" height="" /></td>
        <td width="68%">&nbsp;</td>
      </tr>
      <tr>
        <td><a href="ShowYardsClServlet?type=showDetail&yno=<%=yb.getYno()%>">园名:<%=yb.getYname()%></a></td>
      </tr>
      <tr>
        <td height="91"><font color="black">园号:</font><%=yb.getYno()%></td>
      </tr>
      <tr>
        <td colspan="2"><font color="black">简介:</font><%=yb.getDesc()%></td>
        </tr>
    </table></td>

<%

}
 %>

</tr>

<%
		
if(i==0)
{
		
%>
		
<tr>
    <td align="left" height="5" colspan="9" bgcolor="#FOFOFO"><a href="ShowYardsClServlet?type=downloadImage"><img src="images/ssfb.gif" width="650" /></a></td> 
</tr>
  <%
 }
 
  } %>

</table>
  </tr>
  <tr>
    <td colspan="3" align="center"><%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="ShowYardsClServlet?type=fenye&pageNow=<%=i %>">[<%=i%>]</a>
    <%
    }
     %></td>
  </tr>
  </table>