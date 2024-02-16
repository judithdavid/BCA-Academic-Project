<%@page import="dbconnection.dbconnection"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@include file="UserHeader.jsp" %>


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

<section class="w3l-pricing py-5">
    <div class="container py-md-5 py-4">
        <div class="row justify-content-center text-center">
            <div class="col-md-8">
                <div class="section-heading mb-sm-5 mb-4">
                    <h3 class="title-style mb-2">Give Us Your Feedback</h3>

                </div>
            </div>
        </div>
        <form action="Action/FeedBackAns.jsp" method="post" class="signin-form">
            <div class="row t-in justify-content-center">

                <%
                    dbconnection con = new dbconnection();
                    String n;
                    String id = request.getParameter("id");
                    String age = (String) session.getAttribute("AGE");
                    String gender = (String) session.getAttribute("GENDER");
                    String query = "SELECT * FROM `feedback` WHERE `fid`='" + id + "'";
                    System.out.println(query);
                    Iterator i = con.getData(query).iterator();
                    while (i.hasNext()) {
                        Vector v = (Vector) i.next();
                        n = v.get(0).toString();
                        session.setAttribute("FID", n);
                %>

                <div class="col-lg-4 col-md-6 price-main-info">
                    <div class="price-inner card box-shadow">

                        <div class="card-body">
                            <h4 class="text-uppercase text-center mb-3"><%=v.get(1)%></h4>
                            <label class="container1"><%=v.get(2)%>
                                <input type="radio" checked="checked" name="ans" value="<%=v.get(2)%>">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container1"><%=v.get(3)%>
                                <input type="radio" name="ans" value="<%=v.get(3)%>">
                                <span class="checkmark"></span>
                            </label>
                            <div class="read-more mt-4 pt-lg-2 text-center">
                                <button class="btn btn-style mt-sm-3">Submit</button>
                            </div>

                        </div>
                    </div>
                </div>

                <%
                    }
                %>


            </div>
        </form>

    </div>
</section>


<%@include file="Footer.jsp" %>