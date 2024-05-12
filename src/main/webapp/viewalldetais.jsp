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
<%
List<Product> products = (List<Product>) request.getAttribute("products");
%>
<body>
	<style>
/* Reset default margin and padding */
body, html {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif; /* Use a common font for readability */
}

/* Style for the table */
table {
	width: 100%; /* Make table take full width */
	border-collapse: collapse; /* Collapse table borders */
	margin-top: 20px; /* Add margin above table */
}

/* Style for table headers */
th {
	padding: 10px; /* Add padding for header cells */
	background-color: #007bff; /* Blue background color for headers */
	color: #fff; /* White text color for headers */
	text-align: center; /* Center align text in headers */
}

/* Style for table cells */
td {
	padding: 10px; /* Add padding for cells */
	text-align: center; /* Center align text in cells */
}

/* Style for table rows */
tr:nth-child(even) {
	background-color: #f2f2f2;
	/* Light gray background color for even rows */
}

/* Style for table rows on hover */
tr:hover {
	background-color: #e0e0e0; /* Darker gray background color on hover */
}

/* Style for links in table */
a {
	text-decoration: none; /* Remove underline from links */
	color: #007bff; /* Blue color for links */
}

/* Hover effect for links in table */
a:hover {
	text-decoration: underline; /* Underline links on hover */
}
</style>
	<a href="displayitemfromcart">View cart</a>
	<table cellPdding="20px" border="1">
		<th>Brand</th>
		<th>Category</th>
		<th>Price</th>
		<th>Add</th>
		<%
		for (Product product : products) {
		%>
		<tr>
			<td><%=product.getBrand()%></td>
			<td><%=product.getCategory()%></td>
			<td><%=product.getPrice()%></td>
			<td><a href="additem?id=<%=product.getId()%>">Add to Cart</a></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>