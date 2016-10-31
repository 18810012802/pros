<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页面</title>
</head>
<body>
<h2>欢迎 ${loginuser.name} 你所在的部门名称是${loginuser.department.name} 请选择您要的操作</h2>
<a href="${pageContext.request.contextPath }/employee.do?flag=addEmpUi">添加雇员</a><br/>
<a href="${pageContext.request.contextPath }/employee.do?flag=goListEmp">显示雇员</a><br/>
<a href="${pageContext.request.contextPath }/employee.do?flag=queryEmployeeUi">查询雇员</a><br/>
<a href="${pageContext.request.contextPath }/login.do?flag=logout">退出系统</a><br/>
</body>
</html>