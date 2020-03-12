<%@page import="com.karthik.Curing.dao.impl.OperatorDataDAOImpl"%>
<%@page import="com.karthik.Curing.model.OperatorData"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.gfg {
	font-size: 40px;
	color: green;
	font-weight: bold;
	text-align: center;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>


</head>
<body>
	<jsp:include page="nav1.jsp"></jsp:include>
	<%
		OperatorDataDAOImpl as = new OperatorDataDAOImpl();
			ArrayList<OperatorData> list  = as.operatorList();
	%>
	<div class="gfg">
		Bonder Operators
	</div>
	<center>
		<table id=customers>
			<thead>
				<tr>
					<th>EmployeeId</th>
					<th>EmployeeName</th>
					<th>Age</th>
					<th>Experience</th>
					<th>Rating</th>
				</tr>
				</thead>
				
				<tbody>
				<c:set var="list" value="<%=list%>" ></c:set>
				<c:forEach items="${list}" var="l" >				
				<tr>
					<td>${l.employeeId}</td>
					<td>${l.employeeName}</td>
					<td>${l.age}</td>
					<td>${l.experience}</td>
					<td>${l.rating}</td>
				</tr>
				</c:forEach>
				</tbody>
		</table>
	</center>
	<br>
	<div style="text-align: center">
	<a href="AddOperator.jsp"><button type="submit" class="btn btn-success">Add New Operator</button></a>
	</div>
</body>
</html>