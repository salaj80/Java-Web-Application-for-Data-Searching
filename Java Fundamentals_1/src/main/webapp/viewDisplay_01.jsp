<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View responsive Data into Database</title>
<link href="css/bootstrap.css" rel="stylesheet" type ="text/css">
</head>
<body>
<div class="container">
<div class="row">
<table class="table table-bordered table-responsive table-striped">
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Address</th>
<th>Phone number</th>
<th>Username</th>
<th>Password</th>
<th>Age</th>
<th>Gender</th>
<th>Email</th>
</tr>
</thead>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdatabase", "root", "");
	PreparedStatement ps = con.prepareStatement("Select * from record");
	ResultSet rs = ps.executeQuery();
while (rs.next() == true) {
%>
<tbody>
<tr>
<td> <%= rs.getInt(1) %> </td>
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(3) %> </td>
<td> <%= rs.getInt(4) %> </td>
<td> <%= rs.getString(5) %> </td>
<td> <%= rs.getString(6) %> </td>
<td> <%= rs.getString(7) %> </td>
<td> <%= rs.getString(8) %> </td>
<td> <%= rs.getString(9) %> </td>
</tr>
</tbody>
<%
}
} catch (Exception ex) {
out.println("Error here:" + ex);
}finally{
}
%>
</table>
</div>
</div>
<!--Some JS Put here -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</body>
</html>