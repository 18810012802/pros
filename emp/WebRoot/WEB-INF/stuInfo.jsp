
<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<StuForm> al=(ArrayList)request.getAttribute("al");
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
     <meta http-equiv="content-type" content="text/html; charset=utf-8">
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
		var myXmlHttpRequest3 ="";
	
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
	function getBedno()
	{
		myXmlHttpRequest3=getXmlHttpObject();
		if(myXmlHttpRequest3)
		{
		//var url="ShowInspectionClServlet";
			var url="inspectionPro.jsp";
			var data="yno="+$('yno').value+"&bno="+$('bno').value+"&dormno="+$('dormno').value;
			//var data="bno="+$('bno').value;
			//window.alert(data);
			myXmlHttpRequest3.open("post",url,true);
			myXmlHttpRequest3.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			myXmlHttpRequest3.onreadystatechange=chuli3;
			myXmlHttpRequest3.send(data);
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
	function chuli3()
	{
	//window.alert(myXmlHttpRequest3.readyState);
		if(myXmlHttpRequest3.readyState==4)
		{
		//window.alert(myXmlHttpRequest3.status);
			if(myXmlHttpRequest3.status==200)
			{
			
			   // var bnos= myXmlHttpRequest3.responseText;
			   var bednos=myXmlHttpRequest3.responseXML.getElementsByTagName("bedno");
		     // window.alert("bedno="+bednos.length);
		       // window.alert("bnos="+bnos);
		       $('bedno').length=0;
		       var b="床位号";
		       var myOption=document.createElement("option");
		      // myOption.innerText="寝室号";
		      // window.alert(b);
		      setInnerText(myOption,b);
		       $('bedno').appendChild(myOption);
		         for(var i=0;i<bednos.length;i++)
		        {
		         //window.alert(dormnos.length);
			        var bedno=bednos[i].childNodes[0].nodeValue;
			      //  window.alert(dormno);
			        var myOption=document.createElement("option");
			        myOption.value=bedno;
			       // myOption.innerText=dormno;
			       setInnerText(myOption,bedno);
			        $('bedno').appendChild(myOption);
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
    
    
    
    <td><form action="/emp/stu.do?type=addInfo" method="post"><div align="center">
   <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
        
    <tr>
    <td colspan="4" align="center"><img src="images/xsxx.gif" width="149" height="63" /></td>
    </tr>
   <tr>
    
   <td width="25%">
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
   <td width="25%">
            
    
   <select id="bno" name="buildingno" onchange="getDormno();">

 <option selected>楼号



 </select>  
   </td>
   <td width="25%">
            
    
  <select id="dormno" name="dormno" onchange="getBedno();">

 <option selected>寝室号



 </select>  
   </td>
   
    <td width="25%">
            
    
  <select id="bedno" name="bedno" >

 <option selected>床位号

 



 </select>  
   </td>
    </tr>
     <tr>
             <td height="5" colspan="4" bgcolor="#F0F0F0">&nbsp;</td> 
          </tr>
    </table>
     
     <table class="abc" width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#551A8B">
    
   
    <tr> 
     <td width="25%" align="right">姓名：</td>
       <td width="25%"><input  name="name" type="text" size="15" value=""/></td>
    
       <td width="25%" align="right">学号：</td>
       <td width="25%"><input name="stuno" type="text" size="15" value="" /></td>
       
     </tr> 
     <tr> 
      <td width="25%" align="right">性别：</td>
       <td width="25%"><input name="sex" type="text" size="15" value="" /></td>
      
        <td width="25%" align="right">学院：</td>
       <td width="25%"><input  name="seminary" type="text" size="15" value=""/></td>
            </tr> 
      <tr> 
      
        <td width="25%" align="right">电话：</td>
       <td width="25%"><input  name="phone" type="text" size="15" value=""/></td>
        <td width="25%" align="right">专业：</td>
       <td width="25%"><input name="major" type="text" size="15" value="" /></td>
     </tr> 
       <tr> 
        <td width="25%" align="right">入住时间：</td>
       <td width="25%"><input  name="intime" type="text" size="15" value=""/></td>
       <td width="25%" align="right">角色：</td>
       <td width="25%"><select name="role" ><option value="head">舍长<option value="member">舍员</select></td>
       
     </tr>
      
      <tr>
        <td colspan="4" align="center">
            <input type="image" src="images/add3.png" border="0" width="35" /></td>
      </tr>
      </table></div></form>
     <table class="abc" width="100%"  border="1" bordercolor="#551A8B" cellpadding="0" cellspacing="0">
		 
	
  <tr>
   <td>园号</td>  
   <td>楼号</td>
   <td>寝室号</td>  <td>床位号</td>  
   <td>学院</td>
   <td>专业</td>  
   <td>学号</td>
   <td>姓名</td>  
   <td>性别</td>
  
   <td>电话</td>
    <td>入住时间</td>  
   <td>角色</td>
    <td>修改</td>  
   <td>删除</td>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  StuForm ib=(StuForm)al.get(i);
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getYno() %></td> <td><%=ib.getBuildingno() %></td> <td><%=ib.getDormno() %></td> <td><%=ib.getBedno() %></td> <td><%=ib.getSeminary() %></td> <td><%=ib.getMajor() %></td>
		  <td><%=ib.getStuno()%></td> <td><%=ib.getName() %></td> <td><%=ib.getSex()%></td> <td><%=ib.getPhone()%></td> <td><%=ib.getIntime() %></td> <td><%=ib.getRole() %></td>
		  <td><a href="/emp/stu.do?type=updateInfo&stuno=<%=ib.getStuno()%>">修改</a></td>
		  <td><a href="/emp/stu.do?type=deleteInfo&stuno=<%=ib.getStuno()%>">删除</a></td> 
		 </tr>
		 <%
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="17"  bgcolor="#F0F0F0">
             <form action="/emp/stu.do?type=selectByBase" method="post">
             
             请选择查询依据：
       <select name="major"><option value="all">全部</option><option value="stuno">学生号</option><option value="name">名字</option>
       <option value="sex">性别</option><option value="yno">园号</option><option value="buildingno">楼号</option><option value="bedno">寝室号</option>
       <option value="bedno">床号</option>
       <option value="seminary">学院</option>
       <option value="major">专业</option><option value="roll">角色</option></select>
             
             请输入学生号：<input type="text" size="15" name="name"/><input width="25"  type="image" src="images/cx.JPG"/></form></td> 
          </tr>
		 
		<tr>
    <td colspan="17" align="center">
    <%
    for(int i=1;i<=pageCount;i++)
    {
    %>
    <a href="/emp/stu.do?type=<%=type %>&pageNow=<%=i %>&base=<%=base %>&name=<%=con %>">[<%=i%>]</a>
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
    
  
