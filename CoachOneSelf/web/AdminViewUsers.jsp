
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbconnection"%>
<%@include file="AdminHeader.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 300px;
                margin: auto;
                text-align: center;
                font-family: arial;
            }

            .title {
                color: grey;
                font-size: 18px;
            }

            button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #f39f21;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }

            a {
                text-decoration: none;
                font-size: 22px;
                color: black;
            }
            button:hover, a:hover {
                opacity: 0.7;
            }
        </style>
    </head>
    <body>
        <div class="container py-md-5 py-4">
            <div class="row justify-content-center text-center">
                <div class="col-md-8">
                    <div class="section-heading mb-sm-5 mb-4">
                        <h3 class="title-style mb-2">User Profile</h3>

                    </div>
                </div>
            </div>

            <div class="row t-in justify-content-center">
                <div>
                    &nbsp;
                    &nbsp;
                    &nbsp;

                </div>



                <%
                    dbconnection con = new dbconnection();
                    String userid = (String) session.getAttribute("USERID");
                    String query = "SELECT DISTINCT u.* FROM `login` l,`user` u WHERE l.`uid`=u.`uid`";
                    System.out.println(query);
                    Iterator i = con.getData(query).iterator();
                    while (i.hasNext()) {
                        Vector v = (Vector) i.next();


                %>
                
                <div class="card" style="margin-bottom: 25px;">
                    <img src="assets/images/user.png" alt="John" style="width:100%"> 
                    <h3> <%=v.get(1)%></h3>
                    <p class="title"> <%=v.get(5)%></p>
                    <p> <%=v.get(2)%></p>
                    <p> <%=v.get(6)%></p>

                    <a href="AdminViewUserById.jsp?id=<%=v.get(0)%>"<p><button>Select User</button></p></a>
                </div>

                <div>
                    &nbsp;
                   

                </div>

                <%
                    }
                %>
                


            </div>
                
    </body>
</html>


<%@include file="Footer.jsp" %>