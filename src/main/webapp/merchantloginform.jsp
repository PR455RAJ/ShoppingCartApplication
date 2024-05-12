<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	background-color: #f9f9f9; /* Light gray background color */
}

/* Style for the form container */
form {
	max-width: 400px; /* Limit form width for better readability */
	margin: 50px auto; /* Center align the form with top margin */
	padding: 20px; /* Add padding for spacing */
	border-radius: 10px; /* Rounded corners for the form */
	background-color: #fff; /* White background color for the form */
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
}

/* Style for form labels */
label {
	display: block; /* Display labels as blocks for easy styling */
	margin-bottom: 10px; /* Add margin below labels */
	color: #333; /* Dark gray text color for labels */
}

/* Style for form inputs */
input[type="email"], input[type="password"], input[type="submit"] {
	width: 100%; /* Make inputs take full width */
	padding: 10px; /* Add padding for spacing */
	margin-bottom: 20px; /* Add margin below inputs */
	border-radius: 5px; /* Rounded corners for inputs */
	border: 1px solid #ccc; /* Light gray border */
	box-sizing: border-box; /* Include padding in input width */
	transition: border-color 0.3s ease;
	/* Smooth transition for input borders */
}

/* Focus style for inputs */
input[type="email"]:focus, input[type="password"]:focus {
	border-color: #007bff; /* Blue border color on focus */
}

/* Style for submit button */
input[type="submit"] {
	width: 100%; /* Make submit button take full width */
	background-color: #007bff;
	/* Blue background color for submit button */
	color: #fff; /* White text color for submit button */
	border: none; /* Remove border for submit button */
	border-radius: 5px; /* Rounded corners for submit button */
	padding: 12px; /* Add padding for spacing */
	cursor: pointer; /* Show pointer cursor on hover */
	transition: background-color 0.3s ease;
	/* Smooth transition for button background */
}

/* Hover effect for submit button */
input[type="submit"]:hover {
	background-color: #0056b
}
</style>
	<h1>${msg}</h1>
	<form action="loginvalidation" method="post">
		enter email : <input type="email" name="email"> <br>
		enter password : <input type="password" name="password"> <br>
		<input type="submit" value="Login">
	</form>
</body>
</html>