<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="UTF-8"%>
<%@ page import="com.redhat.demo.HelloBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>
	<%
		System.out.println(HelloBean.getHello());
	%>
</title>
</head>
<body>
	<%
		System.out.println(HelloBean.getHello());
	%>
</body>
</html>