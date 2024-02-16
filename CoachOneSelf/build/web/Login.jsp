<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CoachOneSelf </title>
        <!-- google-fonts -->
        <link href="//fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
        <!-- //google-fonts -->
        <!-- Template CSS Style link -->

        <link rel="stylesheet" href="assets/css/style-starter.css">
        <link rel="icon" href="co.png">
             
        <%@include file="lgstyle.jsp" %>
    </head>
    <body>
        <!--header-->
        <header id="site-header" class="fixed-top">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg stroke">
                    <h1>
                        <a class="navbar-brand" href=index.html>
                            <img src="co_icon.png" alt="" title="" style="height:30px; margin-top:6px margin-bottom:2px; " />
                            CoachOneSelf  </a>
                    </h1>
                    <!-- if logo is image enable this   
        <a class="navbar-brand" href="#index.html">
            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
        </a> -->
                    <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                        <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="UserRegister.jsp">User Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.jsp">Login</a>
                            </li>
                            <!-- search button -->

                            <!-- //search button -->
                        </ul>
                    </div>
                    
                   <!-- toggle switch for light and dark theme -->
                    <div class="cont-ser-position">
                        <nav class="navigation">
                            <div class="theme-switch-wrapper">
                                <label class="theme-switch" for="checkbox">
                                    <input type="checkbox" id="checkbox">
                                    <div class="mode-container">
                                        <i class="gg-sun"></i>
                                        <i class="gg-moon"></i>
                                    </div>
                                </label>
                            </div>
                        </nav>
                    </div>
                    <!-- //toggle switch for light and dark theme -->

                </nav>
            </div>
        </header>
        <!--//header-->
        <!-- banner section -->
        <section id="home" class="w3l-banner py-5">
            <section class="w3l-login " style="left: 500px; top: 100px;">
           <div class="overlay">
			<div class="wrapper">
				<div class="logo">
                                    <a class="brand-logo" href="../index.html"></a>
				</div>
				<div class="form-section">
					<h3>Login</h3>
					 <form action="Action/LoginAction.jsp" method="post">
					<form action="#" method="post" class="signin-form">
						<div class="form-input">
							<input type="text" name="email" placeholder="Email id" required="" autofocus>
						</div>
						<div class="form-input">
							<input type="password" name="Password" placeholder="Password" required="">
						</div>
						
						<button type="submit" class="btn1 btn1-primary theme-button1 mt-4">Login</button>
						
                                                
					</form>
                                             <p class="signup">Don't have an account? <a href="UserRegister.jsp" class="signuplink">Sign Up</a></p>
				
			</div>
		</div>
		</div>
                </section>
		
        </section>
        <%@include file="Footer.jsp" %>