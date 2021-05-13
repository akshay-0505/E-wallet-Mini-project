<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Google fonts link-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Roboto&family=Roboto+Condensed&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- custom styles-->
    <link rel="stylesheet" href="style.css">

    <title>Linkcode</title>
  </head>
  <body>
      
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">LinkCode</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link mx-3" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            
            <!-- 
            <li class="nav-item">
              <a class="nav-link mx-3" href="#">Link</a>
            </li>   
            -->
            
            <li class="nav-item">
                <a class="nav-link btn btn-default btn-primary mx-3" href="signup.jsp">New user</a>
            </li>
            <li class="nav-item">
                <a class="nav-link btn btn-default btn-primary mx-3" href="login.jsp">LogIn</a>
            </li>
          </ul>
          
        </div>
      </nav>

      <!-- carousel start -->

      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active" data-item="100">
            <img src="./images/cr1.jpg" class="d-block w-100" style="width: 100vw; height: 60vh;" alt="first-img">
          </div>
          <div class="carousel-item" data-item="100">
            <img src="./images/cr2.png" class="d-block w-100" style="width: 100vw; height: 60vh;" alt="second-img">
          </div>
          <div class="carousel-item" data-item="100">
            <img src="./images/cr3.jpg" class="d-block w-100" style="width: 100vw; height: 60vh;" alt="third-img">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

	  
      <div style="height: 5vh;"></div>

      <div class="container-fluid security-section">

        <div class="container">
          <br>
          <br>
          <br>
          <div class="section-title"><h2><strong>We Take Your Security</strong></h2></div>
          <p style="font-size: 1.7rem ;font-weight: 300; text-transform: uppercase;">Seriously!!</p>
  
          <div class="row">
  
            <div class="col-md-3">
              <p class="" style="font-weight: 400; font-size: 1.2rem;">Peace of mind for you as we have the most secure technology for your data.</p>
            </div>
  
            <div class="col-md-3">
              <img src="./images/two_factor_icon.png" alt="two_factor_icon" style="width: 80;" class="mx-auto">
              <p class="lead">Simple One Click Recharge Payments.</p>
            </div>
  
            <div class="col-md-3">
              <img src="./images/encryption.png" alt="encryption" style="width: 80;" class="mx-auto">
              <p class="lead">Your Data is safe with us.Feel free to share your details.</p>
            </div>
  
            <div class="col-md-3">
              <img src="./images/secure_contact.png" alt="secure_contact" style="width: 80;" class="mx-auto">
              <p class="lead">An interactive UI and highly functional features.</p>
            </div>
  
  
          </div>

        </div>  

      </div>

      <div style="height: 5vh;"></div>

      <footer class="container-fluid" style="height: 8vh; background: #343a40;">
        <div style="height: 3vh;"></div>
        <div class="container lead" style="color: white; font-family: 'Poppins',sans-serif">
          &copy;2020 Linkcode Technologies.
        </div>

      </footer>
	 
	  
	
	


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>