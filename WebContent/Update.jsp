<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product </title>
<link href="Cs/Insert.css" rel="stylesheet" />
</head>
<body>
 <form method="post" action="/JavaWeb//UploadFile" enctype="multipart/form-data">
     upload img: <input type="file" name="file" size="60" /><br /><br /> 
    < <input type="submit" value="Upload" />
  </form>
<form method="post" action="/JavaWeb//UpdateProduct" enctype="multipart/form-data">
  <h1>Update</h1>
  Select file to upload: <input type="file" name="file" size="60" /><br /><br /> 
  <input placeholder="Name" type="text" required="" name="Name ">
  <input placeholder="About" type="text" required="" name="UpdateAbout " >
  <input placeholder="Price" type="text" required="" name="UpdatePrice ">  
  <input type="text" name="id" >
   <button>Edit</button>
   
     </form>
</body>
</html>