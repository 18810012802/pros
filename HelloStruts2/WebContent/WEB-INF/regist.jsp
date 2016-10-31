<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<script type="text/javascript">

</script>
</head>
<body>
<s:fielderror/>
<form action="regist.action" method="post" enctype="multipart/form-data">
	<s:textfield name="name" label="用户名"/><br/>
	<s:textfield name="pass" label="密码"/><br/>
	<s:textfield name="title" label="文件标题"/><br/>
	<s:file name="upload" label="选择文件"/><br/>
	<s:submit value="注册"/>
</form>
<ul>
<li>
<a href="download.action">下载该图片</a>
</li>
</ul>
</body>
</html>