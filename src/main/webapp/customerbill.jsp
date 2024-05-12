<%@page import="com.jsp.shoppingcart_application.dto.Orders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
/* Reset default margin and padding */
body, html {
	margin: 0;
	padding: 0;
}

/* Style for the heading */
h1, h2 {
	text-align: center; /* Center align the heading */
	margin: 20px 0; /* Add margin for spacing */
}

/* Style for the table */
table {
	width: 100%; /* Make the table take full width */
	border-collapse: collapse; /* Collapse table borders */
	margin-bottom: 20px; /* Add margin for spacing */
}

/* Style for table headers */
th {
	background-color: #f2f2f2; /* Light gray background for headers */
	padding: 10px; /* Add padding for spacing */
	text-align: left; /* Left align text in headers */
}

/* Style for table data cells */
td {
	padding: 10px; /* Add padding for spacing */
}

/* Alternate row color for better readability */
tr:nth-child(even) {
	background-color: #f9f9f9; /* Lighter background color for even rows */
}

/* Style for the thank you message */
h1:last-child {
	text-align: center; /* Center align the message */
	margin-top: 40px; /* Add margin for spacing */
}
</style>
	<%
	Orders o = (Orders) session.getAttribute("orderinfo");
	%>
	<%
	if (o.getTotalPrice() != 0) {
	%>
	<h1>${msg}</h1>
	<table cellPadding="20px" border="1">
		<th>OrderId</th>
		<th>Address</th>
		<th>MobileNum</th>
		<th>Name</th>
		<th>Total Price</th>
		<tr>
			<td><%=o.getId()%></td>
			<td><%=o.getAddress()%></td>
			<td><%=o.getMobileNum()%></td>
			<td><%=o.getName()%></td>
			<td><%=o.getTotalPrice()%></td>
		</tr>
	</table>
	<h2>Your bill is generated</h2>
	<h1>Thank you for Ordering</h1>
	<%
	} else {
	%>
	<h1>Sorry, Items are out of stock</h1>
	<%
	}
	%>

</body>
</html>