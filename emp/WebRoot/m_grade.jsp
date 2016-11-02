<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
UserForm uf=(UserForm)request.getAttribute("uf"); 
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
     <meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	
	<script type="text/javascript">
	function confirm1()
	{
			var a=window.alert("你确定要删除吗?");
			if(a){
			window.alert("删除成功");
			}
	}
	function confirm2()
	{
			return window.confirm("你确定要删除吗?");
		
	}
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
	
	<style type="text/css">
	
	.elegant-aero select {
background: #fbfbfb url('down-arrow.png') no-repeat right;
background: #fbfbfb url('down-arrow.png') no-repeat right;
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width: 138;
}
.elegant-aero .button{
padding: 10px 30px 10px 30px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button2{
padding: 1px 3px 1px 3px;
background: #66C1E4;
border: none;
color: #FFF;
box-shadow: 1px 1px 1px #4C6E91;
-webkit-box-shadow: 1px 1px 1px #4C6E91;
-moz-box-shadow: 1px 1px 1px #4C6E91;
text-shadow: 1px 1px 1px #5079A3;
}
.elegant-aero .button:hover{
background: #3EB1DD;
}
.elegant-aero .button2:hover{
background: #3EB1DD;
}
	
	
	
	
	body {
   font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        /* background: #E6EAE9; */
    }

  #mytable {
   width: 780px;
   padding: 0;
   margin: 0 auto;
   }
   caption {
   padding: 0 0 5px 0;
   width: 780px;     
   font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
  text-align: center;
  }
  th {
  font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
 color: #4f6b72;
  border-left: 1px solid #C1DAD7;
  border-right: 1px solid #C1DAD7;
  border-bottom: 1px solid #C1DAD7;
  border-top: 1px solid #C1DAD7;
  letter-spacing: 2px;
   text-transform: uppercase;
   text-align: center;
   padding: 6px 6px 6px 12px;
    background: #CAE8EA url(images/bg_header.jpg) no-repeat; 
}th.nobg {
   border-top: 0;
   border-left: 0;
   border-right: 1px solid #C1DAD7;
   background: none;
}
#mytable td {    
  border-right: 1px solid #C1DAD7;
  border-bottom: 1px solid #C1DAD7;
  background: #fff;
  font-size:11px;
  padding: 6px 6px 6px 12px;
 color: #4f6b72; 
  }
  #mytable td.alt {
 background: #F5FAFA;color: #797268;
 }
 .spec {
  border-left: 1px solid #C1DAD7;
  border-top: 0;
  background: #fff url(images/bullet1.gif) no-repeat;
 font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;}.specalt {
  border-left: 1px solid #C1DAD7;
  border-top: 0;
  background: #f5fafa url(images/bullet2.gif) no-repeat;
  font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
   color: #797268;}
   html>body td{ font-size:11px;}
   .elegant-aero1{
   float:left;
   margin-left:0;margin-top:0;
   width:100%;
max-width: 1100px;
background: #D2E9FF;
padding: 0px 0px 0px 0px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
}

#i7 { float:left;position:relative; width:780px; height:750px; overflow:hidden; margin:0 0 0 285; }  
    #i8 { position:absolute;width:780px;height:750px;}
 #i9 { float:left;position:relative; width:160px; height:650px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }
	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
     <%--  <div id="i3"><div id="i4">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div> --%>
   
 <div id="i7"><div id="i8">
   
 
   
   <div class="elegant-aero"> 
   <form action="/emp/inspect.do?type=m_add" method="post">
   <table id="mytable" cellpadding="0" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
      <h2>宿舍卫生检查记录</h2>  
 <!--  <tr>
    <td  colspan="4" align="center"><img src="images/xsxx.gif" width="130" /></td>
    </tr>  -->
   <tr>
    
   <td width="33%">
   <select id="yno" name="yno" onchange="getBno();">

 <option selected>宿舍园
<%if(uf.getJob().equals("sysmanager")) 
{%>
 <option value="1">滢园
 <option value="2">沁园
 <option value="3">泓园
 <option value="4">涵园
 <option value="5">泽园
 <option value="6">汇园
 <option value="7">浩园
 <option value="8">润园
 <option value="9">浏园
 <%}else if(uf.getJob().equals("manager")){
 String yname="";
 switch(Integer.parseInt(uf.getYno().trim()))
 {
 case 1:
 yname="滢园";
 break;
 case 2:
 yname="沁园";
 break;
 case 3:
 yname="泓园";
 break;
 case 4:
 yname="涵园";
 break;
 case 5:
 yname="泽园";
 break;
 case 6:
 yname="汇园";
 break;
 case 7:
 yname="浩园";
 break;
 
 
 case 8:
 yname="润园";
 break;
 case 9:
 yname="浏园";
 break;
 default:
 yname="";
 
 }
 
 
  %>
 
 <option value="<%=uf.getYno() %>" selected><%=yname %>
  <%}%>
</select>  
   </td>
   <td width="33%">
   <%if(uf.getJob().equals("sysmanager")) {%>
  <select id="bno" name="buildingno" onchange="getDormno();">

 <option selected>楼号
 </select> 
 <%}else if(uf.getJob().equals("manager")){ %>
 
 <select id="bno" name="buildingno" onchange="getDormno();">

 <option  selected>楼号
 <option value="<%=uf.getBno() %>"><%=uf.getBno() %>
  </select>
 <%} %>
  
   </td>
   <td width="">
  <select id="dormno" name="dormno" onchange="getBedno();">
 <option selected>寝室号
 </select>  
   </td>
   
   
  
    </tr>
    
    </table>
     
      <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
    
   
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
        <td colspan="2" align="center">
        <input class="button" type="reset" value="重置"/>
           <!--  <input type="image" src="images/add3.png" border="0" width="35" /> --></td>
            <td colspan="2" align="center">
        <input class="button" type="submit" value="添加"/>
           <!--  <input type="image" src="images/add3.png" border="0" width="35" /> --></td>
      </tr>
      </table></form>
 
 <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
 <tr>
    <th rowspan="2">日期</th>
     <th rowspan="2">园号</th>
      <th rowspan="2">楼号</th>
  <th rowspan="2">寝室号</th>
    <th colspan="10" align="center">各&nbsp;项&nbsp;等&nbsp;级&nbsp;得&nbsp;分</th>
    <th rowspan="2">总分</th>
     <th rowspan="2">修改</th>
      <th rowspan="2">删除</th>
    
    
  </tr>
<tr>
   <th>物品摆放</th>  
   <th>住宿卡</th>
   <th>空气气味</th> 
   <th>地面阳台</th>
   <th>被子枕头</th>  
   <th>铺面床围</th>
   <th>床下洗簌间</th>  
   <th>桌面</th>
   <th>门窗灯橱</th>  
   <th>墙壁书架</th>
  </tr>		 <%
		 
		 for(int i=0;i<al.size();i++)
		 {
		  InspectForm ib=(InspectForm)al.get(i);
		   if((i%2)==0)
		  {
		 %>
		 <tr align="center">
		 
		 <td><%=ib.getDatetime() %></td>  <td><%=ib.getYno() %></td> <td><%=ib.getBno() %></td> <td><%=ib.getDormno() %></td> <td><%=ib.getWpbf() %></td>
		  <td><%=ib.getZsk()%></td> <td><%=ib.getKqqw() %></td> <td><%=ib.getDmyt()%></td> <td><%=ib.getBzzt() %></td> <td><%=ib.getPmcw()%></td> <td><%=ib.getCxxsj() %>
		  </td> <td><%=ib.getZm()%></td> <td><%=ib.getMcdc() %></td> <td><%=ib.getQbsj()%></td><td><%=ib.getSum()%></td>
		  <td><a href="/emp/inspect.do?type=m_update&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">修改</a></td>
		  <td><a onclick="return confirm2();" href="/emp/inspect.do?type=m_delete&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">删除</a></td> 
		 </tr>
		 <%
		 }else
		  
		  {
		   %>
		 <tr align="center">
		 
		 <td class="alt"><%=ib.getDatetime() %></td>  <td class="alt"><%=ib.getYno() %></td> <td class="alt"><%=ib.getBno() %></td> <td class="alt"><%=ib.getDormno() %></td> <td class="alt"><%=ib.getWpbf() %></td>
		 
		  <td class="alt"><%=ib.getZsk()%></td> <td class="alt"><%=ib.getKqqw() %></td> <td class="alt"><%=ib.getDmyt()%></td> <td class="alt"><%=ib.getBzzt() %></td>
		   <td class="alt"><%=ib.getPmcw()%></td> <td class="alt"><%=ib.getCxxsj() %>
		  </td> <td class="alt"><%=ib.getZm()%></td> <td class="alt"><%=ib.getMcdc() %></td> <td class="alt"><%=ib.getQbsj()%></td>
		  <td class="alt"><%=ib.getSum()%></td>
		  <td class="alt"><a href="/emp/inspect.do?type=m_update&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">修改</a></td>
		  <td class="alt"><a onclick="return confirm2();" href="/emp/inspect.do?type=m_delete&datetime=<%=ib.getDatetime() %>&yno=<%=ib.getYno() %>&bno=<%=ib.getBno() %>&dormno=<%=ib.getDormno() %>">删除</a></td> 
		  		 </tr>
		 <%
		  }
		
		 }
		 
		  %>
		   <tr>
             <td align="center" valign="middle" height="10" colspan="17"  bgcolor="#F0F0F0">
             <form action="/emp/inspect.do?type=m_selectByBase" method="post">
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
 </div></div>
   </div>
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
