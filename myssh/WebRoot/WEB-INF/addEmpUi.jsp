<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<h1>添加雇员</h1>
<form action="${pageContext.request.contextPath}/employee.do?flag=add" method="post">
<table>
<tr><td>name</td><td><input type="text" name="name"/></td></tr>
<tr><td>email</td><td><input type="text" name="email"/></td></tr>
<tr><td>grade</td><td><input type="text" name="grade"/></td></tr>
<tr><td>pwd</td><td><input type="text" name="pwd"/></td></tr>
<tr><td>salary</td><td><input type="text" name="salary"/></td></tr>
<tr><td>department</td>
<td><select name="department">
<option value="64">财务部</option>
<!-- <option value="2">人事部</option> -->
</select></td></tr>
<tr><td><input type="submit" value="添加雇员"/></td><td><input type="reset" value="重填"/></td></tr>
</table>
</form>
<br/>
</body>
</html>