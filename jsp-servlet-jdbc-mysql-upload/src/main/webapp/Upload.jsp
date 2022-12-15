<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
<link href="css/bootstrap.css" rel="stylesheet" type ="text/css">
</head>
<body>
<center>
<div class="container">
<form method="post" action="uploadServlet" enctype="multipart/form-data">
        <h2 class="form-signin-heading">File Upload to Database</h2>
        <div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6 col-xs-12">
	<div class="jumbotron">
	<br>
<p class="text-denger">${error}</p>
<div class="form-group">
<label class="control-label" for="firstName">First Name:</label>
<input type="text" name="firstName" size="50"/>
</div>
<div class="form-group">
<label class="control-label" for="lastName">Last Name:</label>
<input type="text" name="lastName" size="50"/>
</div>
<div class="form-group">
<label class="control-label" for="photo">Portrait Photo:</label>
<input type="file" name="photo" size="50"/>
</div>
<div class="pull-right">
<button type="button" class="btn btn-warning">Save</button>
</div>
</div>
</div>
</div>
<div class="col-md-3"></div>
</div>
</form>
</center>
 <script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
    </body>
  </html>