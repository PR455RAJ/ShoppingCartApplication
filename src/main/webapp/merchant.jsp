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

/* Style for the links container */
body {
	display: flex; /* Use flexbox for layout */
	justify-content: center; /* Center align the links horizontally */
	align-items: center; /* Center align the links vertically */
	height: 100vh; /* Set full viewport height */
	background-color: #f9f9f9; /* Light gray background color */
}

/* Style for the links */
a {
	text-decoration: none; /* Remove underline from links */
	color: #333; /* Dark gray text color */
	padding: 10px 20px; /* Add padding for spacing */
	margin: 0 10px; /* Add margin for spacing between links */
	border-radius: 5px; /* Rounded corners for links */
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
	<a href="register">Register</a>
	<a href="merchantloginform.jsp">Login</a>
</body>
</html>