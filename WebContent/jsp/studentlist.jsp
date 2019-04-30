<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Test</title>
<link type="text/css" rel="stylesheet" href="css/main.css"/>
</head>
<body>
	<form action="user.html" method="post" name="userForm" id="userForm">
	<table width="90%" border="0" cellpadding="0" cellspacing="0" class="main_table">
		<tr class="main_head">
			<td>姓名</td>
			<td>学号</td>
			<td>班级</td>
			<td>年级</td>
			<td>班主任</td>
			<td>家庭住址</td>
			<td>操作</td>
		</tr>
		<c:choose>
			<c:when test="${not empty studentList}">
				<c:forEach items="${studentList}" var="student" varStatus="vs">
				<tr class="main_info">
				<td>${student.name }</td>
				<td>${student.number }</td>
				<td>${student.clas }</td>
				<td>${student.grade }</td>
				<td>${student.teacher }</td>
				<td>${student.address }</td>
				<td><a href="../student/get.html?id=${student.id }">修改</a> |
				 <a href="../student/delete.html?id=${student.id }">删除</a> </td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr class="main_info">
					<td colspan="7">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	
	</form>
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="js/datePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="js/lhgdialog/lhgdialog.min.js?t=self&s=areo_blue"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".main_info:even").addClass("main_table_even");
		});
		
		function sltAllUser(){
			if($("#sltAll").attr("checked")){
				$("input[name='userIds']").attr("checked",true);
			}else{
				$("input[name='userIds']").attr("checked",false);
			}
		}
		
		function addUser(){
			//$(".shadow").show();
			var dg = new $.dialog({
				title:'新增用户',
				id:'user_new',
				width:330,
				height:300,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				xButton:true,
				resize:false,
				page:'user/add.html'
				});
    		dg.ShowDialog();
		}
		
		function editUser(userId){
			var dg = new $.dialog({
				title:'修改用户',
				id:'user_edit',
				width:330,
				height:300,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				resize:false,
				page:'user/edit.html?userId='+userId
				});
    		dg.ShowDialog();
		}
		
		function delUser(id){
			if(confirm("确定要删除该记录？")){
				var url = "student/delete.html?id="+id;
				$.get(url,function(data){
					if(data=="success"){
						document.location.reload();
					}
				});
			}
		}
		
		function editRights(userId){
			var dg = new $.dialog({
				title:'用户授权',
				id:'auth',
				width:280,
				height:370,
				iconTitle:false,
				cover:true,
				maxBtn:false,
				resize:false,
				page:'user/auth.html?userId='+userId
				});
    		dg.ShowDialog();
		}
		
		function search(){
			$("#userForm").submit();
		}
		
		function exportUser(){
			document.location = "user/excel.html";
		}
	</script>
</body>
</html>