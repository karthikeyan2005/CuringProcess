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

.gfg {
	font-size: 40px;
	color: green;
	font-weight: bold;
	text-align: center;
}

.geeks {
	font-size: 17px;
	text-align: center;
	margin-bottom: 20px;
}

body {
	background-colour : white;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
input[type] {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
</style>
<body style="text-align: center">
	<div class="gfg">Curing Process Management</div>

	<div class="gfg">SignUp</div>
	<form action="SignUpServlet" method="post">
		<label for="employeeid">EmployeeId</label> <br> <input type="number" name="employeeid" size=25 placeholder="employeeid" required/> <br> 
		<label for="employeename">EmployeeName</label> <br> <input type="text" name="employeename" placeholder="Employeename" size=25 required/> <br> 
		<label for="designation">Designation</label> <br> <input type="text" name="designation" size=25 placeholder="Designation" required/> <br> 
		<label for="email">MailId</label> <br> <input type="email" name="email" placeholder="EmailId" size=25 required /> <br> 
		<label for="npass">Password</label> <br> <input type="password" name="npass" id="npass" size=25 placeholder="Password" pattern=".{8,}" title="Must contain at least 8 or more characters" required /> <br> 
		<label for="npass">Conform Password</label> <br> <input type="password" name="npass" id="npass" size=25 placeholder="Conform Password" pattern=".{8,}" title="Must contain at least 8 or more characters" required oninput="check(this)" /> <br> 
		<label for="mobileno">Mobile Number</label> <br> <input type="number" name="mobileno" size=25 placeholder="MobileNumber" pattern=".{10,}" title="Invalid Mobile Number" required/> <br> 
		<br><br>
		<input type="submit" value="Continue" class="btn btn-success" /> <br> <br>
		<%
			String result = (String) request.getParameter("result");
			if (result != null) {
				out.println("<centre> Alert :" + result + "</centre>");
			}
		%>
		<script type="text/javascript">
			function check(input) {
				if (input.value != document.getElementById('npass').value) {
					input.setCustomValidity('Password Did Not Match');
				} else {
					// input is valid -- reset the error message
					input.setCustomValidity('')
				}
			}
		</script>
	</form>
	<a href="LoginMailId.jsp"><button type="submit" class="btn btn-success">Go
			to Login</button></a>
</body>
</html>