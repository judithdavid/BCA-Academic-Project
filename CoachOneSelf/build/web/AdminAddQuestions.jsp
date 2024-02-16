<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CoachOneSelf - Home</title>
        <!-- google-fonts -->
        <link href="//fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
        <!-- //google-fonts -->
        <!-- Template CSS Style link -->
        <link rel="stylesheet" href="assets/css/style-starter.css">
         <link rel="icon" href="co.png">
        <style>
            /*the container must be positioned relative:*/
            .custom-select1 {
                position: relative;
                font-family: Arial;
            }

            .custom-select1 select {
                display: none; /*hide original SELECT element:*/
            }

            .select-selected {
                background-color:  #ffaa00;
            }

            /*style the arrow inside the select element:*/
            .select-selected:after {
                position: absolute;
                content: "";
                top: 14px;
                right: 10px;
                width: 0;
                height: 0;
                border: 6px solid transparent;
                border-color: #fff transparent transparent transparent;
            }

            /*point the arrow upwards when the select box is open (active):*/
            .select-selected.select-arrow-active:after {
                border-color: transparent transparent #fff transparent;
                top: 7px;
            }

            /*style the items (options), including the selected item:*/
            .select-items div,.select-selected {
                color: #ffffff;
                padding: 8px 16px;
                border: 1px solid transparent;
                border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
                cursor: pointer;
                user-select: none;
            }

            /*style items (options):*/
            .select-items {
                position: absolute;
                background-color: #ffaa00;
                top: 100%;
                left: 0;
                right: 0;
                z-index: 99;
            }

            /*hide the items when the select box is closed:*/
            .select-hide {
                display: none;
            }

            .select-items div:hover, .same-as-selected {
                background-color: rgba(0, 0, 0, 0.1);
            }
        </style>

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
                           <img src="co_icon.jpg" alt="Your logo" title="Your logo" style="height:30px; margin-top:6px margin-bottom:2px; " />
                     CoachOneSelf  </a>
                    </h1>
            
                    <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                        <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ml-lg-auto">
                            <%@include file="AdminHead.jsp" %>
                            <!-- search button -->

                            <!-- //search button -->
                        </ul>
                    </div>
                    
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
                        <h3 class="title-style mb-4 pb-2">Add Questions</h3>
                        <form action="Action/AddQuestionsAction.jsp" method="post" class="signin-form">

                            <input type="text" name="qu" placeholder="Enter the question*"
                                   class="contact-input" required="" />
                            <input type="text" name="a" placeholder="Option A*"
                                   class="contact-input" required="" />
                            <input type="text" name="b" placeholder="Option B*"
                                   class="contact-input" required="" />
                            <input type="text" name="c" placeholder="Option C*"
                                   class="contact-input" required="" />
                            <input type="text" name="d" placeholder="Option D*"
                                   class="contact-input" required="" />

                            <div class="custom-select1" style="width:670px;">
                                <select name="age">
                                    <option value="0">Select Age:</option>
                                    <option value="a">Below 18</option>
                                    <option value="b">18 - 45</option>
                                    <option value="c">45+</option>

                                </select>
                            </div>

                            <div>
                                &nbsp;
                            </div>
                            <label class="container1">Male
                                <input type="radio" checked="checked" name="gender" value="male">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container1">Female
                                <input type="radio" name="gender" value="female">
                                <span class="checkmark"></span>
                            </label>

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
        <script>
            var x, i, j, l, ll, selElmnt, a, b, c;
            /*look for any elements with the class "custom-select1":*/
            x = document.getElementsByClassName("custom-select1");
            l = x.length;
            for (i = 0; i < l; i++) {
                selElmnt = x[i].getElementsByTagName("select")[0];
                ll = selElmnt.length;
                /*for each element, create a new DIV that will act as the selected item:*/
                a = document.createElement("DIV");
                a.setAttribute("class", "select-selected");
                a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
                x[i].appendChild(a);
                /*for each element, create a new DIV that will contain the option list:*/
                b = document.createElement("DIV");
                b.setAttribute("class", "select-items select-hide");
                for (j = 1; j < ll; j++) {
                    /*for each option in the original select element,
                     create a new DIV that will act as an option item:*/
                    c = document.createElement("DIV");
                    c.innerHTML = selElmnt.options[j].innerHTML;
                    c.addEventListener("click", function (e) {
                        /*when an item is clicked, update the original select box,
                         and the selected item:*/
                        var y, i, k, s, h, sl, yl;
                        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                        sl = s.length;
                        h = this.parentNode.previousSibling;
                        for (i = 0; i < sl; i++) {
                            if (s.options[i].innerHTML == this.innerHTML) {
                                s.selectedIndex = i;
                                h.innerHTML = this.innerHTML;
                                y = this.parentNode.getElementsByClassName("same-as-selected");
                                yl = y.length;
                                for (k = 0; k < yl; k++) {
                                    y[k].removeAttribute("class");
                                }
                                this.setAttribute("class", "same-as-selected");
                                break;
                            }
                        }
                        h.click();
                    });
                    b.appendChild(c);
                }
                x[i].appendChild(b);
                a.addEventListener("click", function (e) {
                    /*when the select box is clicked, close any other select boxes,
                     and open/close the current select box:*/
                    e.stopPropagation();
                    closeAllSelect(this);
                    this.nextSibling.classList.toggle("select-hide");
                    this.classList.toggle("select-arrow-active");
                });
            }
            function closeAllSelect(elmnt) {
                /*a function that will close all select boxes in the document,
                 except the current select box:*/
                var x, y, i, xl, yl, arrNo = [];
                x = document.getElementsByClassName("select-items");
                y = document.getElementsByClassName("select-selected");
                xl = x.length;
                yl = y.length;
                for (i = 0; i < yl; i++) {
                    if (elmnt == y[i]) {
                        arrNo.push(i)
                    } else {
                        y[i].classList.remove("select-arrow-active");
                    }
                }
                for (i = 0; i < xl; i++) {
                    if (arrNo.indexOf(i)) {
                        x[i].classList.add("select-hide");
                    }
                }
            }
            /*if the user clicks anywhere outside the select box,
             then close all select boxes:*/
            document.addEventListener("click", closeAllSelect);
        </script>
        <!-- //contact -->
        <!-- footer -->
        <%@include file="Footer.jsp" %>