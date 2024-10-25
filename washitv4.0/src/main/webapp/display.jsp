<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
<link rel="stylesheet" href="styles/display.css">
<link rel="stylesheet" href="styles/headerFooter.css">
</head>
<body>

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
  <h2>Customer Orders</h2>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum assumenda<br> animi optio sequi delectus sint facilis doloribus,</p>
  </div>
      
	<table>
		<tr>
			<th>Order ID</th>
			<th>Customer Name</th>
			<th>Phone Number</th>
			<th>Delivery Address</th>
			<th>Item Type</th>
			<th>Quantity</th>
			<th>Action</th>
		</tr>
		<c:forEach var="orders" items="${allOrders}">
		<tr>
			<td>${orders.id}</td>
			<td>${orders.name}</td>
			<td>${orders.phone}</td>
			<td>${orders.address}</td>
			<td>${orders.item}</td>
			<td>${orders.quantity}</td>
			<td>
				<a href="update.jsp?id=${orders.id}&name=${orders.name}&phone=${orders.phone}&address=${orders.address}&item=${orders.item}&quantity=${orders.quantity}&">
					<button>Update</button>
				</a>
				<form action="DeleteServlet" method="post">
					<input type="hidden" name="id" value="${orders.id}">
					<button id="delete" type="submit">Delete</button>
				</form>
			</td>
		</tr>
		</c:forEach>	
	</table>
</body>
</html>