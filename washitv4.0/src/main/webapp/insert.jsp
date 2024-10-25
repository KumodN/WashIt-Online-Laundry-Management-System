<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Placement</title>
<link rel="stylesheet" href="styles/headerFooter.css">
<link rel="stylesheet" href="styles/order.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/03308f9fa2.js" crossorigin="anonymous"></script>
</head>
<body>

<!------------------- Header --------------->
<section class="header" style="background-image: linear-gradient(rgba(18, 25, 95, 0.7), rgba(18, 25, 95, 0.7)), url('images/order.jpg'); background-size: cover; background-position: center; min-height: 30vh;">

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
  
  <!-------------Order---------------->
  <div class="text-box">
  <h2>Place Your Order</h2>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum assumenda<br> animi optio sequi delectus sint facilis doloribus,</p>
  </div>
  <section class="order">
  <h2>Enter Order Details</h2>
<form action="InsertServlet" method="post">
	<table>
		<tr>
			<td>Name:</td>
			<td><input type="text" name="name" required></td>
			</tr>
			<tr>
			<td>Phone:</td>
			<td><input type="text" name="phone" required></td>
			</tr>
			<tr>
			<td>Address:</td>
			<td><input type="text" name="address" required></td>
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
			<td><input type="text" name="quantity" required></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" value="Submit">
			<a href="GetAllServlet" class="view-orders-button">View Order List</a>
			</td>
			</tr>
	</table>
</form>
  </section>
  
  <!-- -------------Footer------------ -->
<section class="footer">
  <h4>About Us</h4>
  <p>
    We provide fast, affordable, and eco-friendly laundry services to customers worldwide. Our commitment is to make laundry hassle-free for you.
  </p>

  <div class="icons">
    <i class="fa-brands fa-facebook"></i>
    <i class="fa-brands fa-twitter"></i>
    <i class="fa-brands fa-instagram"></i>
    <i class="fa-brands fa-linkedin"></i>
  </div>
  <p>Made With <i class="fa-regular fa-copyright"></i> by 2024/S2/MLB/WD/G224</p>
</section>

<!-- ---------JavaScript for Toggle Menu----- -->
<script>
  var navLinks = document.getElementById("navLinks");

  function showMenu(){
    navLinks.style.right = "0";
  }
  function hideMenu(){
    navLinks.style.right = "-200px";
  }
</script>

</body>
</html>




