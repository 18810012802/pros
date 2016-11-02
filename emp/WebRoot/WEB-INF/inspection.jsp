
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<InspectForm> al=(ArrayList)request.getAttribute("al");
int pageCount=Integer.parseInt(((String[])request.getAttribute("pageCount"))[0]);
String type=((String[])request.getAttribute("pageCount"))[1];
String base=((String[])request.getAttribute("pageCount"))[2];
String con=((String[])request.getAttribute("pageCount"))[3];
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
	<script type="text/javascript">
	function getXmlHttpObject()
	{
		var xmlHttpRequest;
		if(window.ActiveXObject)
		{
		xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
		}else
		{
		xmlHttpRequest=new XMLHttpRequest();
		}
		return xmlHttpRequest;
		//window.alert(xmlHttpRequest);
	
	}
	
	var myXmlHttpRequest ="";
		var myXmlHttpRequest2 ="";
	
	function getBno()
		{
		myXmlHttpRequest=getXmlHttpObject();
		if(myXmlHttpRequest)
		{
		//var url="ShowInspectionClServlet";
		var url="inspectionPro.jsp";
		var data="yno="+$('yno').value;
		//window.alert(data);
		myXmlHttpRequest.open("post",url,true);
		myXmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		myXmlHttpRequest.onreadystatechange=chuli1;
		myXmlHttpRequest.send(data);
	}
	}
	
	function getDormno()
	{
		myXmlHttpRequest2=getXmlHttpObject();
		if(myXmlHttpRequest2)
		{
		//var url="ShowInspectionClServlet";
			var url="inspectionPro.jsp";
			var data="yno="+$('yno').value+"&bno="+$('bno').value;
			//var data="bno="+$('bno').value;
			//window.alert(data);
			myXmlHttpRequest2.open("post",url,true);
			myXmlHttpRequest2.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			myXmlHttpRequest2.onreadystatechange=chuli2;
			myXmlHttpRequest2.send(data);
	     }
	}
	function chuli1()
	{
	//window.alert(myXmlHttpRequest.readyState);
		if(myXmlHttpRequest.readyState==4)
		{
		//window.alert(myXmlHttpRequest.status);
			if(myXmlHttpRequest.status==200)
			{
			
			   // var bnos= myXmlHttpRequest.responseText;
			   var bnos=myXmlHttpRequest.responseXML.getElementsByTagName("bno");
		       //window.alert(bnos.length);
		       $('bno').length=0;
		       var b="楼号";
		       var myOption=document.createElement("option");
		      // myOption.innerText="楼号";
		      // window.alert(b);
		      setInnerText(myOption,b);
		       $('bno').appendChild(myOption);
		         for(var i=0;i<bnos.length;i++)
		        {
		         //window.alert(bnos.length);
			        var bno=bnos[i].childNodes[0].nodeValue;
			       // window.alert(bno);
			        var myOption=document.createElement("option");
			        myOption.value=bno;
			       // myOption.innerText=bno;
			       setInnerText(myOption,bno);
			        $('bno').appendChild(myOption);
		        }
		         
		        
			}
		}
	}
	function chuli2()
	{
	//window.alert(myXmlHttpRequest2.readyState);
		if(myXmlHttpRequest2.readyState==4)
		{
		//window.alert(myXmlHttpRequest2.status);
			if(myXmlHttpRequest2.status==200)
			{
			
			   // var bnos= myXmlHttpRequest.responseText;
			   var dormnos=myXmlHttpRequest2.responseXML.getElementsByTagName("dormno");
		     //  window.alert(dormnos.length);
		       $('dormno').length=0;
		       var b="寝室号";
		       var myOption=document.createElement("option");
		      // myOption.innerText="寝室号";
		      // window.alert(b);
		      setInnerText(myOption,b);
		       $('dormno').appendChild(myOption);
		         for(var i=0;i<dormnos.length;i++)
		        {
		         //window.alert(dormnos.length);
			        var dormno=dormnos[i].childNodes[0].nodeValue;
			      //  window.alert(dormno);
			        var myOption=document.createElement("option");
			        myOption.value=dormno;
			       // myOption.innerText=dormno;
			       setInnerText(myOption,dormno);
			        $('dormno').appendChild(myOption);
		        }
		         
		        
			}
		}
	}
	function getInnerText(element) 
	
	{
   
    return (typeof element.textContent == "string") ? element.textContent : element.innerText;

    }
	
	function setInnerText(element, text)
	 {
        if (typeof element.textContent == "string") {
        element.textContent = text;
         } else {
         element.innerText = text;
     }
    }
	
	function $(id)
	{
	return document.getElementById(id);
	}
	
	</script>
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
 
   <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
    <td width="150"  height="94" align="center"><jsp:include flush="true" page="left.jsp"></jsp:include></td>
    
    
    
    <td><form action="/emp/inspect.do?type=add" method="post"><div align="center">
   <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
        
    <tr>
    <td colspan="3" align="center"><img src="images/ssws.gif" width="149" height="63" /></td>
    </tr>
   <tr>
    
   <td width="33%">
   <select id="yno" name="yno" onchange="getBno();">

 <option selected>宿舍园

 <option value="1">滢园
 <option value="2">沁园
 <option value="3">泓园
 <option value="4">涵园
 <option value="5">泽园
 <option value="6">汇园
 <option value="7">浩园
 <option value="8">润园
 <option value="9">浏园

 

 </select>  
   </td>
   <td width="33%">
            
    
   <select id="bno" name="bno" onchange="getDormno();">

 <option selected>楼号



 </select>  
   </td>
   <td width="34%">
            
    
  <select id="dormno" name="dormno" >

 <option selected>寝室号



 </select>  
   </td>
    </tr>
     <tr>
             <td height="5" colspan="4" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
    </table>
     
     <table class="abc" width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#551A8B">
    
   
    <tr> 
       <td width="25%" align="right">物品摆放：</td>
       <td width="25%"><input name="wpbf" type="text" size="15" value="" /></td>
        <td width="25%" align="right">住宿卡：</td>
       <td width="25%"><input  name="zsk" type="text" size="15" value=""/></td>
     </tr> 
     <tr> 
       <td width="25%" align="right">空气气味：</td>
       <td width="25%"><input name="kqqw" type="text" size="15" value="" /></td>
        <td width="25%" align="right">地面阳台：</td>
       <td width="25%"><input  name="dmyt" type="text" size="15" value=""/></td>
     </tr> 
      <tr> 
       <td width="25%" align="right">被子枕头：</td>
       <td width="25%"><input name="bzzt" type="text" size="15" value="" /></td>
        <td width="25%" align="right">铺面床围：</td>
       <td width="25%"><input  name="pmcw" type="text" size="15" value=""/></td>
     </tr> 
       <tr> 
       <td width="25%" align="right">床下洗漱间：</td>
       <td width="25%"><input  name="cxxsj" type="text" size="15" value="" /></td>
        <td width="25%" align="right">桌面：</td>
       <td width="25%"><input  name="zm" type="text" size="15" value=""/></td>
     </tr>
      <tr> 
       <td width="25%" align="right">门窗灯橱：</td>
       <td width="25%"><input  name="mcdc" type="text" size="15" value=""/></td>
        <td width="25%" align="right">墙壁书架：</td>
       <td width="25%"><input  name="qbsj" type="text" size="15" value=""/></td>
     </tr>  
      <tr>
        <td colspan="4" align="center">
            <input type="image" src="images/add3.png" border="0" width="35" /></td>
      </tr>
      </table></div></form>
     <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		 
		<tr>
		 <td rowspan="2">日期</td>
    <td rowspan="2">园名</td>
    <td rowspan="2">楼号</td>
    <td rowspan="2">寝室号</td>
    <td colspan="10" align="center">各&nbsp;项&nbsp;等&nbsp;级&nbsp;得&nbsp;分</td>
    <td rowspan="2">总分</td>
     <td rowspan="2">修改</td>
      <td rowspan="2">删除</td>
    
  </tr>
  <tr>
   <td>物品摆放</td>  
   <td>住宿卡</td>
   <td>空气气味</td> 
   <td>地面阳台</td>
   <td>被子枕头</td>  
   <td>铺面床围</td>
   <td>床下洗簌间</td>  
   <td>桌面</td>
   <td>门窗灯橱</td>  
   <td>墙壁书架</td>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  InspectForm ib=(InspectForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getDatetime() %></td> <td><%=ib.getYname() %></td> <td><%=ib.getBno() %></td> <td><%=ib.getDormno() %></td> <td><%=ib.getWpbf() %></td>
		  <td><%=ib.getZsk()%></td> <td><%=ib.getKqqw() %></td> <td><%=ib.getDmyt()%></td> <td><%=ib.getBzzt() %></td> <td><%=ib.getPmcw()%></td> <td><%=ib.getCxxsj() %>
		  </td> <td><%=ib.getZm()%></td> <td><%=ib.getMcdc() %></td> <td><%=ib.getQbsj()%></td><td><%=ib.getSum()%></td>
		  <td><a href="/emp/inspect.do?type=update&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">修改</a></td>
		  <td><a href="/emp/inspect.do?type=delete&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">删除</a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td height="5" colspan="17" bgcolor="#F0F0F0" align="center"> <form action="/emp/inspect.do?type=selectByBase" method="post">
      请选择查询依据：
       <select name="yno"><option value="all">全部</option><option value="dormno">寝室号</option>
      <option value="datetime">日期</option>  
      </select>            
             
             请输入查询内容：
             <input type="text" size="15" name="sum"/><!-- <input width="25"  type="image" src="images/cx.JPG"/> -->
             <input class="button2" type="submit" value="查询"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="17" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/inspect.do?type=<%=type %>&pageNow=<%=i %>&base=<%=base %>&con=<%=con %>">[<%=i%>]</a>
    <%
    }
     %>
     </td>
  </tr>

</table> 
    
   
    </td><td width="100" height="94"></td>
    </tr> <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
    </table>
    </body>
    </html>
    
  
