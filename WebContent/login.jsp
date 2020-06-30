<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <link href="Cs/login.css" rel="stylesheet" />
</head>
<body>
	<form method="post" action='/JavaWeb//sevletlogin'>
  <h1>Login</h1>
  <input placeholder="Username" type="text" required="" name="user" >
  <input placeholder="Password" type="password" required="" name="pass">
  <button>Login</button>
     </form>
</body>
</html>