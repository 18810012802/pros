<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>天气预报</title>
     <script src="js/jquery-1.9.1.js"></script>
    <script src="js/ajex.js"></script>
</head>

<body>
	<form method="post" action="CXFSer">
		编号：<input type="text" name="id"/><br/>
		名字：<input type="text" name="name"/><br/>
		年龄：<input type="text" size="2" name="age"/><br/>
		<input type="submit" value="提交"/>
		
	</form>
</body>
</html>