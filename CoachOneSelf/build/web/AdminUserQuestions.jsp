<%@page import="dbconnection.dbconnection"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@include file="AdminHeader.jsp" %>


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
                    <h3 class="title-style mb-2">Questionnaire </h3>

                </div>
            </div>
        </div>
      
            <div class="row t-in justify-content-center">

                <%
                    dbconnection con = new dbconnection();
                    String n;
                    String uid = (String) session.getAttribute("USERID");
                    String query = "SELECT q.`question`,a.`ans`,q.`a`,q.`b`,q.`c`,q.`d` FROM `userans` a,`questions` q,`login` l WHERE q.`qid`=a.`qid` AND a.`uid`=l.`uid` AND l.`uid`='" + uid + "'";
                    System.out.println(query);
                    Iterator i = con.getData(query).iterator();
                    while (i.hasNext()) {
                        Vector v = (Vector) i.next();
                %>
                <div class="col-lg-4 col-md-6 price-main-info">
                    <div class="price-inner card box-shadow">
                        <div class="card-body">
                            <h4 class="text-uppercase text-center mb-3"><%=v.get(0)%></h4>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li> <span class="fa fa-check"></span> <%=v.get(1)%></li>
                                <li class="disable"> <span class="fa fa-check"></span> <%=v.get(2)%></li>
                                <li class="disable"> <span class="fa fa-check"></span> <%=v.get(3)%></li>
                                <li class="disable"> <span class="fa fa-check"></span> <%=v.get(4)%></li>
                                <li class="disable"> <span class="fa fa-check"></span> <%=v.get(5)%></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <%
                    }
                %>


                
                
            </div>
                
                <a href="AdminViewVideos.jsp"><button class="btn btn-style mt-sm-3">Sent Videos</button></a>
                <a href="AdminViewImage.jsp"><button class="btn btn-style mt-sm-3">Sent Images</button></a>
                <a href="AdminViewPdf.jsp"><button class="btn btn-style mt-sm-3">Sent Documents</button></a>

    </div>
</section>


<%@include file="Footer.jsp" %>