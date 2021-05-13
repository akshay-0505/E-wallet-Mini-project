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

    <title>Linkcode|Login</title>
  </head>
  <body>

    <div class="cover-img">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>

                <div class="col-md-6">
                    <div id="ui">
                        <h3 class="mb-4">Login Here</h3>
                        <form action="LoginController">
                            <div class="form-group">
                                <label for="uname">UserName For Portal</label>
                                <input type="text" id="uname" name="uname" placeholder="Username" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="pass">Password</label>
                                <input type="password" id="pass" name="pass" placeholder="Password" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </form>
                        <%
                      		String msg=(String)request.getAttribute("msg");
                            if(msg!=null){
                        %>    	
            					<br>
                            	<h5>Invalid Credentials.</h5>
                        <%  } %>
                    </div>
                </div>

                <div class="col-md-3"></div>
            </div>
        </div>
    </div>





    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  </body>
</html>