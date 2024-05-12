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
}

/* Style for the links */
a {
	display: inline-block; /* Display links as blocks for easy styling */
	text-decoration: none; /* Remove underline */
	color: #333; /* Dark gray color for links */
	padding: 10px 20px; /* Add padding for spacing */
	margin: 10px; /* Add margin for spacing between links */
	border-radius: 5px; /* Rounded corners */
	background-color: #eaeaea; /* Lighter gray background for links */
	transition: background-color 0.3s ease;
	/* Smooth transition for hover effect */
}

/* Hover effect for links */
a:hover {
	background-color: #ccc; /* Darker gray background on hover */
	color: #fff; /* White text color on hover */
}
</style>
	<a href="registercustomer">Register</a>
	<a href="customerlongin.jsp">Login</a>
</body>
</html>