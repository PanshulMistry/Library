<%-- <%@page import="com.busticketbooking.bean.Bus"%> --%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script type="text/javascript">
	function getdid(busid) {
		var busId = busid;
		var x = confirm("Are you sure want to Delete?");
		
		if(x==true)
		{
			$(document).ready(function() {
				
					$.get("DeleteBus", {
						busid : busId
					})
				});
		}
	}
</script>
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bo
  otstrap.min.css" />-->

<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/22.jpg" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">

<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"
	rel="stylesheet">
<style>
body {
	background-image: url("images/busimage.jpg");
	background-repeat: no-repeat;
	background-size: 4500px;
}
</style>
<title>Bus Report</title>
</head>
<body>
	<!-- 	<script> -->
	<!-- 		$(document).ready(function() { -->
	<!-- 			$('#myTable').dataTable(); -->
	<!--  		}); -->
	<!-- 	</script> -->
	<%-- 	<%@include file="header.jsp"%> --%>
	<%-- 	<% --%>
	<!--  	int cnt = 0; -->
	<%-- 	%> --%>
	<!-- 	<!-- busList shows all the records of buses it is comes from the ViewBusesReport Servlet. -->
	-->
	<%-- 	<% --%>
	<!--  	List<Bus> busList = (List<Bus>) request.getAttribute("busList"); -->
	<%-- 	%> --%>
	<div class="container" style="border: t">
		<h2 style="text-align: center; margin-top: 20px;">Bus Report</h2>
		<br> <br>

		<table id="myTable" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Sr. No</th>
					<th>Bus Number</th>
					<th>Bus Name</th>
					<th>Source</th>
					<th>Destination</th>
					<th>Total Seats</th>
					<th>Available Seats</th>
					<th>Date</th>
					<th>Time</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<%-- 				<% --%>
				<!--  				for (Bus bus : busList) { -->
				<%-- 				%> --%>
				<%-- 				<% --%>
				<!--  				if (bus.getStatus() != 0) { -->
				<%-- 				%> --%>
				<%-- 				<% --%>
				<!--  				if (bus.getBusId() != 0) { -->
				<%-- 				%> --%>
				<%-- 				<% --%>
				<!--  				cnt = cnt + 1; -->
				<%-- 				%> --%>
				<tr>
					<td>11</td>
					<td>0</td>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
					<td>6</td>
					<td>7</td>
					<td><a type="button" href="#"><i
							class="fa fa-edit" aria-hidden="true"
							style="color: green; cursor: pointer; font-size: 25px;"></i></a></td>
					<td><a type="button"><i class="fa fa-trash" onclick="#"
							aria-hidden="true"
							style="color: red; cursor: pointer; font-size: 25px;"></i></a></td>
				</tr>
				<%-- 				<% --%>
				<!--  				} -->
				<%-- 				%> --%>
				<%-- 				<% --%>
				<!--  				} -->
				<%-- 				%> --%>
				<%-- 				<% --%>
				<!--  				} -->
				<%-- 				%> --%>
			</tbody>
		</table>
	</div>
</body>
</html>