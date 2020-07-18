<%@page import="com.karthik.Curing.dao.impl.BonderDAOImpl"%>
<%@page import="com.karthik.Curing.model.Bonders"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
  
  var script_url = "https://script.google.com/macros/s/AKfycbyc70JlQ4NGDun9D-Ooh0uxfuy0Z1i5ObMmW7JId9ppaKHTw0g/exec";


  
function read_value() {

 var url = script_url+"?action=read";

$.getJSON(url, function (json) {

    // Set the variables from the results array 
   
  

        // CREATE DYNAMIC TABLE.
        var table = document.createElement("table");

		

        var header = table.createTHead();
		var row = header.insertRow(0);     
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		var cell6 = row.insertCell(5);
		var cell7 = row.insertCell(6);
		var cell8 = row.insertCell(7);
		var cell9 = row.insertCell(8);
		
	
		cell1.innerHTML = "<b>Bonder Name</b>";
		cell2.innerHTML = "<b>Bonder Id</b>";
		cell3.innerHTML = "<b>Bonder Capacity</b>";
		cell4.innerHTML = "<b>Max Temperature</b>";
		cell5.innerHTML = "<b>Max Pressure</b>";
		cell6.innerHTML = "<b>Install Date</b>";
		cell7.innerHTML = "<b>Recent Operated Date</b>";
		cell8.innerHTML = "<b>Recent Operated Time</b>";
		cell9.innerHTML = "<b>Recent Operated Temperature</b>";
		
        
        // ADD JSON DATA TO THE TABLE AS ROWS.
        for (var i = 0; i < json.records.length; i++) {

            tr = table.insertRow(-1);
				var tabCell = tr.insertCell(-1);
                tabCell.innerHTML = json.records[i].ID;
				tabCell = tr.insertCell(-1);
				tabCell.innerHTML = json.records[i].NAME;
            }
      

        // FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
        var divContainer = document.getElementById("showData");
        divContainer.innerHTML = "";
        divContainer.appendChild(table);
		
		
    });
	}

read_value(); 
</script> 

</head>
<body>
	<jsp:include page="Index.jsp"></jsp:include>
	<%
		BonderDAOImpl as = new BonderDAOImpl();
			ArrayList<Bonders> list  = as.bonderList();
	%>
	<div class="gfg">
		Bonders
	</div>
	<center>
		<table id=customers>
			<thead>
				<tr>
					<th>BonderNo</th>
					<th>BonderName</th>
					<th>Bonder Capacity</th>
					<th>Max Temperature</th>
					<th>Max Pressure</th>
					<th>Status</th>
				</tr>
				</thead>
				
				<tbody>
				<c:set var="list" value="<%=list%>" ></c:set>
				<c:forEach items="${list}" var="l">				
				<tr>
					<td>${l.bonderId}</td>
					<td>${l.bonderName}</td>
					<td>${l.bonderCapacity}</td>
					<td>${l.maxTemp}</td>
					<td>${l.maxPressure}</td>
					<td>${l.status}</td>
				</tr>
				</c:forEach>
				</tbody>
		</table>
		<div id="showData"></div>
	</center>
	<br>
	<div style="text-align: center">
	<a href="AddBonder.jsp"><button type="submit" class="btn btn-success">Add New Bonder</button></a>
	</div>
</body>
</html>