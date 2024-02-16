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
        <title>CoachOneSelf</title>
        <!-- google-fonts -->
        <link href="//fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
        <!-- //google-fonts -->
        <!-- Template CSS Style link -->

        <link rel="stylesheet" href="assets/css/style-starter.css">
        
        <link rel="icon" href="co.png">

        <style>
            /* The container */
            .container1 {
                display: block;
                position: relative;
                padding-left: 35px;
                margin-bottom: 12px;
                cursor: pointer;
                font-size: 22px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            /* Hide the browser's default radio button */
            .container1 input {
                position: absolute;
                opacity: 0;
                cursor: pointer;
            }

            /* Create a custom radio button */
            .checkmark {
                position: absolute;
                top: 0;
                left: 0;
                height: 25px;
                width: 25px;
                background-color: #eee;
                border-radius: 50%;
            }

            /* On mouse-over, add a grey background color */
            .container1:hover input ~ .checkmark {
                background-color: #ccc;
            }

            /* When the radio button is checked, add a blue background */
            .container1 input:checked ~ .checkmark {
                background-color: #f39f21;
            }

            /* Create the indicator (the dot/circle - hidden when not checked) */
            .checkmark:after {
                content: "";
                position: absolute;
                display: none;
            }

            /* Show the indicator (dot/circle) when checked */
            .container1 input:checked ~ .checkmark:after {
                display: block;
            }

            /* Style the indicator (dot/circle) */
            .container1 .checkmark:after {
                top: 9px;
                left: 9px;
                width: 8px;
                height: 8px;
                border-radius: 50%;
                background: white;
            }
        </style>
    </head>

    <body>
        <!--header-->
        <header id="site-header" class="fixed-top">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg stroke">
                     <h1>
                       <a class="navbar-brand" href="#index.html">
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
                                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
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

        <!-- inner banner -->
        <div class="inner-banner">
            <section class="w3l-breadcrumb">
                <div class="container">

                    <ul class="breadcrumbs-custom-path">


                    </ul>
                </div>
            </section>
        </div>
        <!-- //inner banner -->

        <!-- contact -->
        <section class="w3l-contact pb-5" id="contact">
            <div class="container pb-md-5 pb-4">
                <div class="row contact-block">
                    <div class="col-lg-7 contact-right mt-5">
                        <h3 class="title-style mb-4 pb-2">Join Us</h3>
                        <form action="Action/UserRegAction.jsp" method="post" class="signin-form">

                            <input type="text" name="name" placeholder="Your Name*"
                                   class="contact-input" required="" />
                            <input type="email" name="email" placeholder="Your Email*"
                                   class="contact-input" required="" />
                            <input type="text" name="age" placeholder="Your Age*"
                                   class="contact-input" required="" maxlength="2"pattern="[0-9]{2}"/>
                            <input type="text" name="contact" placeholder="Your Contact*"
                                   class="contact-input" required="" pattern="[6789][0-9]{9}"maxlength="10" minlength="10"/>
                            <input type="text" name="aadhar" placeholder="Your aadhar number*"
                                   class="contact-input" required="" pattern="[0-9]{12}" maxlength="12"/>
                            <label class="container1" >Male
                                <input type="radio" checked="checked" name="gender" value="male">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container1">Female
                                <input type="radio" name="gender" value="female">
                                <span class="checkmark"></span>
                            </label>
                            
                             <input type="password" name="psw" placeholder="Create your Password*"
                                    class="contact-input" required="" minlength="8"/>
                             
                            <div class="form-input">
                                <textarea name="address" placeholder="Type your address here*"
                                          required=""></textarea>
                            </div>
                            <button class="btn btn-style mt-sm-3">Register</button>
                        </form>
                    </div>
                    <div class="col-lg-5 mt-lg-0 mt-5 pl-xl-5 pl-lg-4">
                        <div class="map-iframe">
                            <img src="assets/images/chiled.jpg"
                                 width="100%" height="500" frameborder="0" allowfullscreen=""></img>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //contact -->
        <!-- footer -->
        <%@include file="Footer.jsp" %>