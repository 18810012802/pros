<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<h1>管理员登陆</h1>
<form action="/myssh/login.do?flag=login" method="post">
<table>
<tr><td>id:</td><td><input type="text" name="id"/></td></tr>
<tr><td>pw:</td><td><input type="password" name="pwd"/></td></tr>
<tr><td><input type="submit" value="登陆"/></td><td><input type="reset" value="重置"/></td></tr>
</table>
</form>
<br/>
</body>
</html>