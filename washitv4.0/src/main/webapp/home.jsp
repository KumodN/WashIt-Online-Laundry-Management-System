<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page-WashIt</title>
<link rel="stylesheet" href="styles/home.css">
<link rel="stylesheet" href="styles/headerFooter.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/03308f9fa2.js" crossorigin="anonymous"></script>
</head>
<body>
 <section class="homeHeader" style="background-image: linear-gradient(rgba(18, 25, 95, 0.7), rgba(18, 25, 95, 0.7)), url('images/banner.png'); background-position: center; background-size: cover; min-height: 100vh; width: 100%; position: relative;">

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

     <div class="text-box">
      <h1>Discover the power of</h1>
      <h1 id="logo">WashIt</h1>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum assumenda<br> animi optio sequi delectus sint facilis doloribus,</p>
      <a href="" class="hero-btn">Sign-Up To Know More</a>
    </div>

  </section>

  <section class="course">

    <h1>Services We Offer</h1>
    <p>
      We offer a variety of professional laundry services to make your life easier. Whether you need clothes washed, dry cleaned, or ironed, our team is ready to help.
    </p>

    <div class="row">
      <div class="course-col">
        <h3>Wash & Fold</h3>
        <p>Our wash and fold service ensures your clothes are perfectly cleaned and folded, ready to wear or store. We handle all types of fabrics with care.</p>
      </div>
      <div class="course-col">
        <h3>Dry Cleaning</h3>
        <p>Our professional dry cleaning service guarantees to remove tough stains and keep your delicate clothes in pristine condition, all while maintaining fabric quality.</p>
      </div>
      <div class="course-col">
        <h3>Ironing Service</h3>
        <p>Get your clothes crisp and wrinkle-free with our ironing service. From business shirts to casual wear, we ensure a sharp look every time.</p>
      </div>
    </div>

  </section>
<section class="campus">

    <h1>Our Island-wide Branches</h1>
    <p>We have multiple branches across the globe to provide convenient and fast laundry services wherever you are. Find your nearest branch for hassle-free laundry services.</p>

    <div class="row">

      <div class="campus-col">
        <img src="images/colombo.jpg">
        <div class="layer">
          <h3>COLOMBO</h3>
        </div>
      </div>

      <div class="campus-col">
        <img src="images/galle.png">
        <div class="layer">
          <h3>DOWN SOUTH</h3>
        </div>
      </div>

      <div class="campus-col">
        <img src="images/ella.jpg">
        <div class="layer">
          <h3>HILL COUNTRY</h3>
        </div>
      </div>

    </div>

  </section>
<section class="facilities">
    <h1>Our Facilities</h1>
    <p>
      We are committed to offering top-notch laundry services with state-of-the-art facilities to ensure your clothes are treated with care and precision.
    </p>

    <div class="row">
      <div class="facilities-col">
        <img src="images/modern.jpg">
        <h3>Modern Laundry Equipment</h3>
        <p>
          Our facilities are equipped with the latest laundry technology to guarantee the best cleaning results, no matter the fabric or type of clothing.
        </p>
      </div>

      <div class="facilities-col">
        <img src="images/capacity.jpg">
        <h3>Large Capacity</h3>
        <p>
          We handle all laundry sizes, from personal laundry to bulk loads for businesses, ensuring efficiency and quick turnaround times.
        </p>
      </div>

      <div class="facilities-col">
        <img src="images/eco.jpg">
        <h3>Eco-Friendly Solutions</h3>
        <p>
          We use environmentally friendly detergents and energy-efficient machines to minimize our carbon footprint while delivering excellent results.
        </p>
      </div>
    </div>

  </section>
<section class="testimonials">
    <h1>What Our Customers Say</h1>
    <p>See what our satisfied customers have to say about our premium laundry services.</p>

    <div class="row">
      <div class="testimonial-col">
        <img src="images/user1.jpg">
        <div>
          <p>
            Excellent laundry service! My clothes always come back perfectly cleaned and folded. Highly recommended!
          </p>
          <h3>Christine Berkley</h3>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
        </div>
      </div>

      <div class="testimonial-col">
        <img src="images/user2.jpg">
        <div>
          <p>
            Quick, reliable, and affordable. The dry cleaning service is spot on, and my clothes have never looked better!
          </p>
          <h3>David Byer</h3>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star-half-stroke"></i>
        </div>
      </div>
    </div>
  </section>
<section class="cta" style="background-image: linear-gradient(rgba(18, 25, 95, 0.7), rgba(18, 25, 95, 0.7)), url('images/sign.jpg'); background-size: cover; background-position: center; padding: 100px 0; text-align: center; color: white;">
  <h1>Sign Up for Our Laundry Services<br> Conveniently From Anywhere</h1>
  <a href="" class="hero-btn">Contact Us</a>
</section>


<!-- --------------Footer----------------- -->
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