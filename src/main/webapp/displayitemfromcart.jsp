<%@page import="com.jsp.shoppingcart_application.dto.Item"%>
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

/* Style for Buy Now button */
button {
	display: block; /* Display the button as a block element */
	margin-top: 20px; /* Add margin above the button */
}

/* Style for the link inside the button */
button a {
	text-decoration: none; /* Remove underline from the link */
	color: #fff; /* White text color for the link */
	padding: 10px 20px; /* Add padding for spacing */
	border-radius: 5px; /* Rounded corners for the link */
	background-color: #007bff; /* Blue background color for the link */
	transition: background-color 0.3s ease;
	/* Smooth transition for hover effect */
}

/* Hover effect for the link inside the button */
button a:hover {
	background-color: #0056b3; /* Darker blue background color on hover */
}
</style>
	<%
	List<Item> items = (List<Item>) request.getAttribute("itemslist");
	double totalPrice = (Double) request.getAttribute("totalprice");
	%>

	<table cellpadding="10px" border="1" cellspacing="0">
		<th>Brand</th>
		<th>Category</th>
		<th>Quantity</th>
		<th>Price</th>
		<%
		for (Item item : items) {
		%>
		<tr>
			<td><%=item.getBrand()%></td>
			<td><%=item.getCategory()%></td>
			<td><%=item.getQuantity()%></td>
			<td><%=item.getPrice()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h1>
		totalPrice:
		<%=totalPrice%>
	</h1>
	<button>
		<a href="addorder">Buy Now</a>
	</button>
</body>
</html>