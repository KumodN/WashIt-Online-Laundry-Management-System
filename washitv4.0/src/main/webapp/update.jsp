<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Order</title>
<link rel="stylesheet" href="styles/update.css">
<link rel="stylesheet" href="styles/headerFooter.css">
</head>
<body>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String item = request.getParameter("item");
	String quantity = request.getParameter("quantity");
%>
<!--------------------- Header--------------- -->
<section class="header">
    <nav>
      <a href="home.jsp"><img src="images/logo.png"></a>
      <div class="nav-links" id="navLinks">
        <i class="fa fa-times" onclick="hideMenu()"></i>
        <ul>
          <li><a href="home.jsp">HOME</a></li>
          <li><a href="">ABOUT</a></li>
          <li><a href="">SERVICES</a></li>
          <li><a href="insert.jsp">ORDERS</a></li>
          <li><a href="">PROFILE</a></li>
        </ul>
      </div>
      <i class="fa fa-bars" onclick="showMenu()"></i>
    </nav>
</section>

<div class="text-box">
  <h2>Update Orders</h2>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum assumenda<br> animi optio sequi delectus sint facilis doloribus,</p>
</div>

<form action="UpdateServlet" method="post" class="update-form"> <!-- Added class here -->
	<table>
		<tr>
			<td>ID:</td>
			<td><input type="text" name="id" value="<%=id%>" readonly></td>
		</tr>
		<tr>	
			<td>Name:</td>
			<td><input type="text" name="name" value="<%=name%>" required></td>
		</tr>
		<tr>
			<td>Phone:</td>
			<td><input type="text" name="phone" value="<%=phone%>" required></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input type="text" name="address" value="<%=address%>" required></td>
		</tr>
		<tr>
			<td>Item:</td>
			<td>
				<select name="item" required>
					<option value="" disabled selected>Select an item</option>
					<option value="Shirt - $5">Shirt - $5</option>
					<option value="Pants - $8">Pants - $8</option>
					<option value="Dress - $10">Dress - $10</option>
					<option value="Jacket - $15">Jacket - $15</option>
					<option value="Sweater - $12">Sweater - $12</option>
					<option value="Towel - $3">Towel - $3</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Quantity:</td>
			<td><input type="text" name="quantity" value="<%=quantity%>" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit">
			<a href="GetAllServlet" class="cancel-button">Cancel</a>
			</td>
		</tr>
	</table>
</form>

</body>
</html>
