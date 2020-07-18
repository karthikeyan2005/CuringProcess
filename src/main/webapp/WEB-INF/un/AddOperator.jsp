<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 40px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
input[type=text] {
	width: 25%;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('asserts/maxresdefault.jpg');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	
}
input[type=number] {
	width: 25%;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('asserts/maxresdefault.jpg');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	
}


</style>
<body style="text-align: center">
	<jsp:include page="nav1.jsp"></jsp:include>
	<div class="gfg">New Boiler Operator</div>
	<form action="SignUpServlet" method="post">
		<label for="employeeid">EmployeeId</label> <br>
		<input type="number" name="employeeid" size=25 placeholder="enter employeeid" required/> <br> 
		<br><label for="employeename">  EmployeeName</label><br>
		<input type="text" name="employeename" placeholder="enter employeename" size=25 required/> <br> 
		<br><label for="age">Age</label> <br>
		<input type="number" name="age" size=25 placeholder="enter age" required/> <br> 
		<br><label for="experience">Experience</label> <br>
		<input type="number" name="experience" placeholder="enter experience of operator" size=25 required /> <br> 
		<br><label for="rating">Rating</label> <br>
		<input type="number" name="rating" size=25 placeholder="enter rating to operator"  required /> <br /> 
		<br><br>
		<input type="submit" value="Continue" class="btn btn-success" /> <br> <br>
		<%
			String result = (String) request.getParameter("result");
			if (result != null) {
				out.println("<centre> Alert :" + result + "</centre>");
			}
		%>
	</form>
	
</body>
</html>