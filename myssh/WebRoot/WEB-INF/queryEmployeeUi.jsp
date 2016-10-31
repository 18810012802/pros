<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
	<script type="text/javascript" language="javascript" src="/myssh/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" language="javascript" src="/myssh/js/my.js"></script>
</head>
<body>

 
 <form action="${pageContext.request.contextPath}/employee.do?flag=queryEmployeeUi" method="post">
 
 <table>
<tr><td>name</td><td><input type="text" name="name" value=""/></td></tr>
<tr><td>email</td><td><input type="text" name="email" value=""/></td></tr>
<tr><td>grade</td><td><input type="text" name="grade" value=""/></td></tr>
<tr><td>department</td>
<td><select name="department">
<option value="64">财务部</option>
<!-- <option value="2">人事部</option> -->
</select></td></tr>
<tr><td><input type="submit" value="查询"/></td><td><input type="reset" value="重填"/></td></tr>

</table>
</form>
 <table>
    <tr><td>id</td><td>name</td><td>email</td><td>grade</td><td>salary</td> <c:if test="${sessionScope.loginuser.grade==2}"><td>修改用户</td><td>删除用户</td></c:if></tr>
    <c:forEach items="${emplist}" var="emp">
     <tr><td>${emp.id }</td><td>${emp.name }</td>
     <td>${emp.email }</td><td>${emp.grade }</td>
     <td>${emp.salary }</td> <c:if test="${sessionScope.loginuser.grade==2}"><td><a  href="${pageContext.request.contextPath}/employee.do?flag=goUpdEmpUi&id=${emp.id }">修改用户</a></td>
     <td><a class="delid" href="${pageContext.request.contextPath}/employee.do?flag=delEmp&id=${emp.id }">删除用户</a></td></c:if>
     </tr>
    </c:forEach>
    </table>
    
    <c:forEach var="i" begin="1" end="${pageCount}">
    <a class="query" href="${pageContext.request.contextPath}/employee.do?flag=queryEmployeeUi&pageNow=${i }">${i }</a>
    </c:forEach></body>
</html>