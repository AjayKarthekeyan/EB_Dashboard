<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TNEB Login</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 500px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	text-align: center;
}

h1 {
	color: #333;
	margin-bottom: 20px;
}

img {
	width: 100px;
	height: 100px;
}

table {
	width: 100%;
	margin: 0 auto;
	border-collapse: collapse;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="text"], input[type="password"] {
	width: calc(100% - 22px);
	padding: 8px;
	margin: 5px 0;
	box-sizing: border-box;
}

input[type="submit"], input[type="reset"] {
	width: calc(50% - 10px);
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
	border-radius: 3px;
	margin: 5px 5px;
}

input[type="submit"] {
	background-color: #4CAF50;
}

input[type="reset"] {
	background-color: #f44336;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

input[type="reset"]:hover {
	background-color: #e53935;
}

a {
	text-decoration: none;
	color: #4CAF50;
}

a:hover {
	color: #45a049;
}

.new-user {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<center>
			<h1>Tamil Nadu Electricity Board</h1>
			<img src="D:\javacodes\TNEB\WebContent\WEB-INF\Images\eblogo.png" alt="TNEB Logo" height="100" width="100">
		</center>
		<form method="post" action="loginvalidate.jsp">
			<table border="0">
				<tr>
					<td><strong>EB ID:</strong></td>
					<td><input type="text" name="uname" placeholder="Enter the ID"></td>
				</tr>
				<tr>
					<td><strong>Password:</strong></td>
					<td><input type="password" name="pass" placeholder="Password"></td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input type="submit" value="Login">
							<input type="reset" value="Reset">
						</center>
					</td>
				</tr>
			</table>
			<p class="new-user">
				Don't have an account? <a href="RegisterUser.jsp">New user</a>
			</p>
		</form>
	</div>
</body>
</html>
