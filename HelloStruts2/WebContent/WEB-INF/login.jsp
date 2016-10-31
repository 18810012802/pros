<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<script  type="text/javascript" language="javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" language="javascript" src="js/my.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	$("loginBn").on("click",function(){
		alert("sss")
		$.get("loginPro",
				$("#loginForm").serializeArray(),
				function(data,statusText){
					$("show").height(80).width(300)
					.css("border","1px solid black")
					.css("background-color","#efef99")
					.css("color","#ff0000")
					.css("padding","20px")
					.empty();
					$("#show").append("登陆结果:"+data+"<br/>");
					$("#show").show(2000);
				},"html");
	});
});
function b(){
	
		alert("sss")
		$.get("loginPro",
				$("#loginForm").serializeArray(),
				function(data,statusText){
					$("show").height(80).width(300)
					.css("border","1px solid black")
					.css("background-color","#efef99")
					.css("color","#ff0000")
					.css("padding","20px")
					.empty();
					$("#show").append("登陆结果:"+data+"<br/>");
					$("#show").show(2000);
				},"html");
}
	</script>
</head>
<body>
<form id="loginForm" action="loginPro.action" method="post">
<table>
<tr><s:fielderror/></tr>
<tr><td><s:text name="username"/></td><td><input type="text" name="user.name"></td><td><s:fielderror name="username"></s:fielderror></td></tr>
<!--  <tr><td>密码：</td><td><input type="text" name="password"></td><td></td></tr>-->
<tr><td>书籍1：</td><td><input type="text" name="booklist[0].username"></td><td></td></tr>
<tr><td>书籍2：</td><td><input type="text" name="booklist[1].username"></td><td></td></tr>
<tr><td>年龄：</td><td><input type="text" name="age"></td><td></td></tr>
<tr><td><input  id="loginBn" onclick="a();" type="button" value="异步"/></td><td><input type="submit" value="提交"/></td><td></td></tr>
</table>
</form>
<div id="show" style="display:none;">
</div>
</body>
</html>