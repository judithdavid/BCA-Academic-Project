
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

                <%
                    dbconnection con = new dbconnection();
                    String n, userid, age, gender;
                    String id = request.getParameter("id");
                    String query = "SELECT * FROM `user` where uid='" + id + "'";
                    System.out.println(query);
                    Iterator i = con.getData(query).iterator();
                    while (i.hasNext()) {
                        Vector v = (Vector) i.next();
                        userid = v.get(0).toString();
                        session.setAttribute("USERID", userid);
                        age = v.get(3).toString();
                        session.setAttribute("AGE", age);
                        gender = v.get(4).toString();
                        session.setAttribute("GENDER", gender);
                %>

                <div class="card" >
                    <img src="assets/images/user.png" alt="John" style="width:100%" > 
                    <h3> <%=v.get(1)%></h3>
                    <p class="title"> <%=v.get(5)%></p>
                    <p> <%=v.get(2)%></p>
                    <p> <%=v.get(6)%></p>
                    <p> Age :  <%=v.get(3)%></p>
                    <p>Gender : <%=v.get(4)%></p>
                    <p>Aadhar : <%=v.get(7)%></p>

                    <table>
                        <tr>
                            <td> <a href="AdminUserQuestions.jsp"<p><button>Questions</button></p></a></td>
                            <td> <a href="AdminViewUserFeedback.jsp"<p><button>Feedback</button></p></a></td>
                            <td> <a href="https://myaadhaar.uidai.gov.in/verify" target="_blank"><p><button>Aadhar</button></p></a></td>

                        </tr>

                    </table>
                    <table>

                        <tr>
                            <td> <a href="Action/RemoveUser.jsp?id=<%=v.get(0)%>"><p><button>Remove</button></p></a></td>   
                        </tr>
                    </table>
                </div>


                <%
                    }
                %>

            </div>
    </body>
</html>

<%@include file="Footer.jsp" %>