<style>
    .dropbtn {
        background-color: transparent;
        color:#cccccc;
        padding: 16px;
        font-weight: bold;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }
    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: transparent;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: transparent}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: transparent;
    }
</style>
<script type = "text/javascript" >
    function preventBack() {
        window.history.forward();
    }
    setTimeout("preventBack()", 0);
    window.onunload = function () {
        null
    };

</script>
<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav ml-lg-auto">

<li class="nav-item ">
    <a class="dropbtn" href="UserHome.jsp">HOME <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
    <div class="dropdown">
        <button class="dropbtn">VIEW</button>
        <div class="dropdown-content">
            <a class="nav-link" href="UserViewVideo.jsp">VIDEOS </a>
            <a class="nav-link" href="UserViewDoc.jsp">DOCUMENT </a>
            <a class="nav-link" href="UserViewImages.jsp">IMAGES </a>
        </div>
    </div>
</li>

<li class="nav-item">
    <a class="dropbtn" href="UserViewProduct.jsp">PRODUCT</a>
</li>
<li class="nav-item">
    <a class="dropbtn" href="UserViewProfile.jsp">PROFILE</a>
</li>
<li class="nav-item">
    <a class="dropbtn" href="UserMyAns.jsp">MY PROFILE</a>
</li>
<li class="nav-item">
    <a class="dropbtn" href="UserViewFeed.jsp">FEEDBACK</a>
</li>
<li class="nav-item">
    <a class="dropbtn" onclick="preventBack()" href="Login.jsp">LOGOUT</a>
</li>

</ul>
                </div>