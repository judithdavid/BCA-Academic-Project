<style>
    .dropbtn {
        background-color: transparent;
        color: #cccccc;
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


<li class="nav-item">
    <a class="dropbtn" href="AdminHome.jsp">HOME <span class="sr-only">(current)</span></a>
</li>

<li class="nav-item">
    <div class="dropdown">
        <button class="dropbtn">ADD</button>
        <div class="dropdown-content">
            <a class="nav-link" href="AdminAddQuestions.jsp">QUESTIONS </a>
            <a class="nav-link" href="AdminAddVideo.jsp">VIDEOS </a>
            <a class="nav-link" href="AdminAddPdf.jsp">DOCUMENTS </a>
            <a class="nav-link" href="AdminAddImages.jsp">IMAGES </a>
        </div>
    </div>
</li>
<li class="nav-item">
    <a class="dropbtn" href="AdminViewUsers.jsp">USERS </a>
</li>
<li class="nav-item">
    <div class="dropdown">
        <button class="dropbtn">PRODUCT</button>
        <div class="dropdown-content">
            <a class="nav-link" href="AdminAddProduct.jsp">NEW PRODUCT</a>
            <a class="nav-link" href="AdminViewProduct.jsp">PRODUCT LIST</a>
        </div>
    </div>
</li>
<li class="nav-item">
    <div class="dropdown">
        <button class="dropbtn">FEEDBACK</button>
        <div class="dropdown-content">
            <a class="nav-link" href="AdminAddFeedQue.jsp">FEEDBACK QUESTIONS</a>
        </div>
    </div>
</li>


<li class="nav-item">
    <a class="dropbtn" onclick="preventBack()" href="Login.jsp">LOGOUT</a>
</li>