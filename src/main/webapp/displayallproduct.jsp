<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	font-family: Arial, sans-serif; /* Use a common font for readability */
}

/* Style for the table container */
table {
	width: 100%; /* Make the table take full width */
	border-collapse: collapse; /* Collapse table borders */
	margin: 20px 0; /* Add margin for spacing */
}

/* Style for table headers */
th {
	background-color: #f2f2f2; /* Light gray background for headers */
	padding: 10px; /* Add padding for spacing */
	text-align: left; /* Left align text in headers */
	border-bottom: 1px solid #ccc; /* Bottom border for headers */
}

/* Style for table data cells */
td {
	padding: 10px; /* Add padding for spacing */
	border-bottom: 1px solid #ccc; /* Bottom border for cells */
}

/* Alternate row color for better readability */
tr:nth-child(even) {
	background-color: #f9f9f9; /* Lighter background color for even rows */
}

/* Style for update and delete links */
a {
	text-decoration: none; /* Remove underline from links */
	color: #007bff; /* Blue color for links */
	padding: 5px 10px; /* Add padding for spacing */
	border-radius: 5px; /* Rounded corners for links */
	background-color: #f2f2f2; /* Light gray background for links */
	transition: background-color 0.3s ease;
	/* Smooth transition for hover effect */
}

/* Hover effect for links */
a:hover {
	background-color: #ddd; /* Lighter gray background on hover */
}
</style>
	<%
	List<Product> products = (List<Product>) request.getAttribute("productlist");
	%>
	<table cellPadding="20px" border="1">
		<th>id</th>
		<th>brand</th>
		<th>category</th>
		<th>price</th>
		<th>stock</th>
		<th>update</th>
		<th>delete</th>

		<%
		for (Product p : products) {
		%>
		<tr>
			<td><%=p.getId()%></td>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getPrice()%></td>
			<td><%=p.getStock()%></td>
			<td><a href="updateproduct?id=<%=p.getId()%>">Update</a></td>
			<td><a href="deleteproduct?id=<%=p.getId()%>">delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>