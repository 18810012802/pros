<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<% 
/* response.setHeader("Cache-Control","no-store");//HTTP1.1
response.setHeader("Pragma","no-cache");//HTTP1.0
response.setDateHeader("Expires",0);//禁止在服务器中缓存
 */
 //String value = request.getParameter("value");//获取传送过来的参数
String value="远程内容";
 
response.getWriter().write(value);//模拟数据写回
%>