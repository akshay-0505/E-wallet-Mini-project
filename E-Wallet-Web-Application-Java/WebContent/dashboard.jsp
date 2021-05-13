<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Google fonts link-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&family=Roboto&family=Roboto+Condensed&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- custom styles-->
    <link rel="stylesheet" href="style.css">

    <title>Linkcode</title>
  </head>
  <body>

    <!--Header Start-->


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <h2 class="navbar-brand lead">LinkCode Transaction Portal</h2>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
                <a class="nav-link btn btn-default btn-primary mx-3" href="LogoutController">Logout</a>
            </li>

          </ul>
          
        </div>
      </nav>
      
      <!-- Main Section start -->
      
      <div class="container">
    	<%
    		if(session==null){
    	%>		
    		<h2>Login to enjoy our services..</h2>	
    	<% 
    			response.sendRedirect("index.jsp");
    		}
    	%>
    	
      </div>
      
      <div class="container welcome-section">
      	<br>
      	<h3>Welcome to the Portal ${user.fname}.</h3>
      	<h3>Your Current E-wallet Balance is ${balance}.</h3>
      </div>
      
      <div class="container">

        <div class="row rowmid align-items-center justify-content-center" style="overflow:hidden;">
            <div class="col-md-4">
                <div class="card border-dark mb-3" style="max-width: 18rem; height: 65vh;">
                    <div class="card-header">E-Wallet Balance Update</div>
                    <div class="card-body text-dark">
                      <h5 class="card-title">Add More Money</h5>
                      <p class="card-text">Update the balance in your E-wallet by adding more money with a single click.</p>
                      <div style="height: 3vh;"></div>
                      <form action="AddController">
                        <div class="form-group">
                            <label for="amount">Enter Amount</label>
                            <input type="text" id="amount" name="amount" placeholder="amount" class="form-control" required>
                        </div>
                        <div style="height: 3vh;"></div>
                        <div class="form-group">
                            <label for="pass">Confirm your Password</label>
                            <input type="password" id="pass" name="pass" placeholder="Password" class="form-control" required>
                        </div>
                        <div style="height: 3vh;"></div>
                        <button type="submit" class="btn btn-primary btn-block">Add Money</button>
                        
                        <%
                      		String msg=(String)request.getAttribute("msg");
                            if(msg!=null){
                            	out.println(msg);
                            }
                        %>    	
            					
                        
                    </form>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card border-dark mb-3" style="max-width: 18rem; height: 65vh;">
                    <div class="card-header">Recharge</div>
                    <div class="card-body text-dark">
                      <h5 class="card-title">Recharge Your mobile.</h5>
                      <p class="card-text">Recharge using the money in your E-wallet easily.</p>
                      <form action="RechargeController">
                        <div class="form-group">
                            <label for="mob">Enter MobileNo</label>
                            <input type="text" id="mob" name="mob" placeholder="mobile" class="form-control" maxlength="10" minlength="10" required>
                        </div>
                        <div class="form-group">
                            <label for="amount">Enter Amount</label>
                            <input type="text" id="amount" name="amount" placeholder="amount" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="provider">Select Service Provider:</label>
                            <select class="form-control" id="provider" name="provider" required>
                              <option>Jio</option>
                              <option>Vodafone</option>
                              <option>Idea</option>
                              <option>Airtel</option>
                            </select>
                          </div> 
                        <div class="form-group">
                            <label for="pass">Confirm your Password</label>
                            <input type="password" id="pass" name="pass" placeholder="Password" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Recharge</button>
                        <%
                      		String msg1=(String)request.getAttribute("msg1");
                            if(msg1!=null){
                            	out.println(msg1);
                            }
                        %>
                        
                    </form>
                    </div>
                  </div>
            </div>
    
        </div>

      </div>      
	

	 <footer class="container-fluid" style="height: 8vh; background: #343a40;">
        <div style="height: 3vh;"></div>
        <div class="container lead" style="color: white; font-family:'Poppins',sans-serif;">
          &copy;2020 Linkcode Technologies.
        </div>

      </footer>






    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>