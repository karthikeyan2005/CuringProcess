<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

/* CSS property for header section */
.header {
	background-color: transparent;
	padding: 15px;
	text-align: center;
}

.header1 {
	background-color: Tomato;
	text-align: center;
	padding: 10px;
	font-size: 10px;
}

/* CSS property for nevigation menu */
.nav_menu {
	overflow: hidden;
	background-color: Tomato;
}

.nav_menu a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.nav_menu a:hover {
	background-color: white;
	color: green;
}

.button {
	border-radius: 4px;
	background-color: #f4511e;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 20px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}


.form-inline {
	display: flex;
	flex-flow: row wrap;
	align-items: center;
}

/* Add some margins for each label */
.form-inline label {
	margin: 5px 10px 5px 0;
}

/* Style the input fields */
.form-inline input {
	vertical-align: middle;
	margin: 5px 10px 5px 0;
	padding: 10px;
	background-color: #fff;
	border: 1px solid #ddd;
}

/* Style the submit button */
.form-inline button {
	padding: 10px 20px;
	background-color: dodgerblue;
	border: 1px solid #ddd;
	color: white;
}

.form-inline button:hover {
	background-color: royalblue;
}

/* Add responsiveness - display the form controls vertically instead of horizontally on screens that are less than 800px wide */
@media ( max-width : 800px) {
	.form-inline input {
		margin: 10px 0;
	}
	.form-inline {
		flex-direction: column;
		align-items: stretch;
	}
}

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
	display:block;
	font-weight: bold;
	text-align: center;
}

.geeks {
	font-size: 17px;
	text-align: center;
	margin-bottom: 20px;
}
.bondername{
	font-size: 30px;
	color: tomato;
	display:block;
	font-weight: bold;
	text-align: left;
}
.topic{
	font-size: 30px;
	color: tomato;
	display:block;
	font-weight: bold;
	text-align: left;
}

</style>

<body style="text-align: centre">
	<div class="header">		
		<span class="gfg">Curing Process Management </span>
		</div>



	<div class="nav_menu"> 
		<a href="Login.jsp"><button class="btn">Login</button></a> 
		<a href="SignUp.jsp"><button class="btn">Sign Up</button></a>
		<a href="dashboard.jsp"><button class="btn">Dashboard</button></a>
		<a href="visual.jsp"><button class="btn">Visualization</button></a> 
		<a href="bonderlogger.jsp"><button class="btn">BonderDetails</button></a> 
		<a href="indication.jsp"><button class="btn">Indication details</button></a> 
		<a href="https://drive.google.com/drive/u/3/folders/1LivPO8RAMze6PgufGhk5_xErnOadCsV4"><button class="btn">DataSheet</button></a>
		<a href="warninglogs.jsp"><button class="btn">Warning Records</button></a>
		<a href="logoutServlet"><button class="btn">LogOut</button></a>
		
	</div>
</body>
</html>

