<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP-Servlet Upload File</title>
</head>
<body>
	<h2>Demo JSP-Servlet Upload File</h2>
  <form method="post" action="/JavaWeb//UploadFile" enctype="multipart/form-data">
    Select file to upload: <input type="file" name="file" size="60" /><br /><br /> 
    <input type="submit" value="Upload" />
  </form>
</body>
</html>