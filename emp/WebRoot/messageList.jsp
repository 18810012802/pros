<%@ page language="java" import="java.util.*,com.qdu.struts.form.*,com.qdu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<MessageForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
%>
<head>
<style type="text/css">
 article, aside, figure, footer, header, hgroup, 
menu, nav, section { display: block; } 

/* body {
    width: 500px;
    margin: 20px auto;
    font: 16px/1.4 Arial, sans-serif;
    background: #f3eee9;
} */

 p {
    margin: 0 0 1em;
}

.comment {
    overflow: hidden;
    padding: 0 0 1em;
    border-bottom: 1px solid #ddd;
    margin: 0 0 1em;
    *zoom: 1;
}

.comment-img {
    float: left;
    margin-right: 33px;
    border-radius: 5px;
    overflow: hidden;
}

.comment-img img {
    display: block;
}

.comment-body {
    overflow: hidden;
}

.comment .text {
    padding: 10px;
    border: 1px solid #e5e5e5;
    border-radius: 5px;
    background: #fff;
}

.comment .text p:last-child {
    margin: 0;
}

.comment .attribution {
    margin: 0.5em 0 0;
    font-size: 14px;
    color: #666;
}

/* Decoration */

.comments,
.comment {
    position: relative;
}

.comments:before,
.comment:before,
.comment .text:before {
    content: "";
    position: absolute;
    top: 0;
    left: 65px;
}

.comments:before {
    width: 3px;
    top: -20px;
    bottom: -20px;
    background: rgba(0,0,0,0.1);
}

.comment:before {
    width: 9px;
    height: 9px;
    border: 3px solid #fff;
    border-radius: 100px;
    margin: 16px 0 0 -6px;
    box-shadow: 0 1px 1px rgba(0,0,0,0.2), inset 0 1px 1px rgba(0,0,0,0.1);
    background: #ccc;
}

.comment:hover:before {
    background: orange;
}

.comment .text:before {
    top: 18px;
    left: 78px;
    width: 9px;
    height: 9px;
    border-width: 0 0 1px 1px;
    border-style: solid;
    border-color: #e5e5e5;
    background: #fff;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
} 

#i7 { float:left;position:relative; width:780px; height:560px; overflow:hidden; margin:20 0 0 285; }  
    #i8 { position:absolute;width:780px;height:auto;}
 #i9 { float:left;position:relative; width:160px; height:570px; overflow:hidden; margin:20 0 0 0; }  
   
    #i10 { position:absolute;  }

</style>
<link rel="stylesheet" type="text/css" href="css/my.css">
</head>
<body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr></table></div></div>
  
  <div id="i7"><div id="i8">
<div class="elegant-aero">
<section class="comments">



<%
for(int i=0;i<al.size();i++)
{
String icon="";
MessageForm mf=(MessageForm)al.get(i);
UserForm uf=(UserForm)request.getSession().getAttribute("userForm");
if(!(uf.getUserno().equals(mf.getSender().trim())))
{
   messageBO mb=new messageBO();
   if(uf.getType().equals("student"))
   {
   icon=mb.getIconBySender(mf.getSender(), "manager");
   }else  if(uf.getType().equals("manager")){
    icon=mb.getIconBySender(mf.getSender(), "student");
   }
   
}else{

icon=mf.getIcon();
}
 %>
<article class="comment">
  <a class="comment-img" href="#non">
    <img src="images/<%=icon%>"  width="50" height="50">
  </a>
  <div class="comment-body">
    <div class="text">
      <p><%=mf.getMescon() %></p>
    </div>
    <p class="attribution">by <a href="#non"><%=mf.getSender() %></a> at <%=mf.getMestime() %></p>
  </div>
</article>
<%
}

 
  
 %>


 <!--  <article class="comment">
  <a class="comment-img" href="#non">
    <img src="http://lorempixum.com/50/50/people/7" alt="" width="50" height="50">
  </a>
  <div class="comment-body">
    <div class="text">
      <p>This is a much longer one that will go on for a few lines.</p>
      <p>It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.</p>
    </div>
    <p class="attribution">by <a href="#non">Joe Bloggs</a> at 14:23pm, 4th Dec 2010</p>
  </div>
</article> -->
</section>

</div></div></div>




<div id=""><div id="">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
  <td width="100%" align="center" colspan="3">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/message.do?type=messageList&pageNow=<%=i %>">[<%=i%>]</a>
    <%
    }
     %> </td> </tr>
</table></div></div>
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
</body>

</html> 