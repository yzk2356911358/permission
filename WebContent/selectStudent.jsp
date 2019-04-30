<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Test</title>
<link type="text/css" rel="stylesheet" href="../css/main.css" />
<style type="text/css">
body {
	width: 100%;
	height: 100%;
	background-color: #FFFFFF;
	text-align: center;
}

.input_txt {
	width: 200px;
	height: 20px;
	line-height: 20px;
}

.info {
	height: 40px;
	line-height: 40px;
}

.info th {
	text-align: right;
	width: 65px;
	color: #4f4f4f;
	padding-right: 5px;
	font-size: 13px;
}

.info td {
	text-align: left;
}
</style>
</head>
<body>
	<form action="student/getbyname.html" method="post">
		学生姓名:<input type="text" name="name" id="name"><input type="submit">
		<c:if test="${not empty str}">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr class="info">
					<th>id:</th>
					<td><input type="text" name="id" id="id" class="input_txt"
						value="${student.id }" readonly="readonly" /></td>
				</tr>
				<tr class="info">
					<th>姓 名:</th>
					<td><input type="text" name="name" id="name" class="input_txt"
						value="${student.name }" /></td>
				</tr>
				<tr class="info">
					<th>学 号:</th>
					<td><input type="text" name="number" id="number"
						class="input_txt" value="${student.number }" /></td>
				</tr>
				<tr class="info">
					<th>班 级:</th>
					<td><input type="text" name="clas" id="clas" class="input_txt"
						value="${student.clas }" /></td>
				</tr>
				<tr class="info">
					<th>年 级:</th>
					<td><input type="text" name="grade" id="grade"
						class="input_txt" value="${student.grade }" /></td>
				</tr>
				<tr class="info">
					<th>班主任:</th>
					<td><input type="text" name="teacher" id="teacher"
						class="input_txt" value="${student.teacher }" /></td>
				</tr>
				<tr class="info">
					<th>家庭住址:</th>
					<td><input type="text" name="address" id="address"
						class="input_txt" value="${student.address }" /></td>
				</tr>
				<tr>
					<td><input type="submit"></td>
				</tr>
			</table>
		</c:if>
	</form>

</body>
</html>