<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New user</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
margin-top:400px;
	background-color: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	width: 90%;
	max-width: 600px;
	box-sizing: border-box;
}

h1 {
	color: #333;
	text-align: center;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

td {
	padding: 12px;
	text-align: left;
}

input[type="text"], input[type="number"], input[type="password"], select {
	width: calc(100% - 22px);
	padding: 10px;
	margin: 5px 0;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

input[type="submit"] {
	display: inline-block;
	padding: 12px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	margin-top: 20px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

a {
	display: inline-block;
	padding: 12px 20px;
	background-color: #f0f0f0;
	color: #333;
	border: 1px solid #ccc;
	border-radius: 4px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	margin-top: 20px;
}

a:hover {
	background-color: #e0e0e0;
}

.center-content {
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>New User Register Here</h1>
		<form method="post" action="ValidateReg.jsp">
			<table>
				<tr>
					<td>Name</td>
					<td><input name="names" type="text" placeholder="Enter the user name" required></td>
				</tr>
				<tr>
					<td>Phone No.</td>
					<td><input type="number" name="Phno" maxlength="10" placeholder="Enter the phone number" required></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="addr" placeholder="Enter the address" required></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" name="state" placeholder="Enter the state" required></td>
				</tr>
				<tr>
					<td>District</td>
					<td><input type="text" name="dist" placeholder="Enter the district" required></td>
				</tr>
				<tr>
					<td>Locality</td>
					<td><input type="text" name="loc" placeholder="Enter the location" required></td>
				</tr>
				<tr>
					<td>Pin Code</td>
					<td><input type="text" maxlength="6" name="pin" placeholder="Enter the pincode" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" maxlength="4" placeholder="Enter the password" required></td>
				</tr>
				<tr>
					<td>Type of Connection</td>
					<td><select name="type">
							<option>Choose an option</option>
							<option value="Household">Household</option>
							<option value="Shop">Shop</option>
							<option value="Factory">Factory</option>
						</select></td>
				</tr>
				<tr>
					<td colspan="2" class="center-content">
						<input type="submit" value="Register">
						<a href="index.jsp">Go to Login</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
