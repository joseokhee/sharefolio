<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td>${boardDto.no mod 3}</td>
		<td>${boardDto.id}</td>
		<td>${boardDto.name}</td>
		<td>${boardDto.description}</td>
		<td>${boardDto.regUser}</td>
</table>
no ���� 10���� �۰ų� ������?${boardDto.no le 10}<br>
no ���� 3~10 �����ΰ�?${boardDto.no le 10 and boardDto.no ge 3}
</body>
</html>