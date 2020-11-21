<%-- 
    Document   : updateForm
    Created on : Nov 20, 2020, 7:40:07 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
  String username=(String)session.getAttribute("username");
  if (username == null)
  {
    response.sendRedirect("index.html");
  }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
        <style>
            body {
                background: #f8f8f8;
            }

            display-flex, .display-flex, .display-flex-center, .signup-content, .signin-content {
                display: flex;
                display: -webkit-flex;
            }

            .field-validation-error {
                color: #f00;
            }

            .validation-summary-errors {
                color: #f00;
                font-weight: bold;
            }

            .input-validation-error {
                border: 2px solid #f00 !important;
                background-color: #fee !important;
            }

            .signin-content {
                border-radius: 20px;
                padding-top: 67px;
                padding-bottom: 87px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            .signin-form, .signin-image {
                width: 50%;
                overflow: hidden;
            }

            .signin-form {
                margin-right: 90px;
                margin-left: 80px;
            }

            .signin-image {
                margin-left: 110px;
                margin-right: 20px;
                margin-top: 10px;
            }

            .signup-image-link {
                font-size: 14px;
                color: #222;
                display: block;
                text-align: center;
            }

            .form-title {
                text-align: center;
            }

            .form-group {
                position: relative;
                margin-bottom: 25px;
                overflow: hidden;
            }

                .form-group:last-child {
                    margin-bottom: 0px;
                }

            .form-button {
                text-align: center;
            }

            #signin {
                margin-top: 16px;
            }

            .form-submit {
                display: inline-block;
                background: #6dabe4;
                color: #fff;
                border-bottom: none;
                width: auto;
                padding: 15px 39px;
                border-radius: 5px;
                -moz-border-radius: 5px;
                -webkit-border-radius: 5px;
                margin-top: 25px;
                cursor: pointer;
            }

                .form-submit:hover {
                    background: #4292dc;
                }

            .agree-term {
                display: inline-block;
                width: auto;
            }

            .label-agree-term {
                position: relative;
                top: 0%;
                transform: translateY(0);
                -moz-transform: translateY(0);
                -webkit-transform: translateY(0);
                -o-transform: translateY(0);
                -ms-transform: translateY(0);
            }

            .signin-content {
                background: white;
                margin-top: 40px;
                border-radius: 30px;
                background: #fff;
                padding-top: 67px;
                padding-bottom: 87px;
            }
            
            #navigation ul li{
                display: inline-block;
                padding: 0px 5px;
            }
            
            #navigation ul li a{
                color:#fff;
                text-decoration: none;
            }
            
            #navigation {
                background: #4062b7;
                padding: 3px
            }
            
            #navigasi {
                margin-right: 30px; 
                margin-left: 30px; 
            }
            
            .hoverable:before{
                  position:absolute;
                  pointer-events: none;
                  z-index:-1;
                  content: '';
                  top: 100%;
                  left: 5%;
                  height:10px;
                  width:90%;
                  opacity:0;
                  background: -webkit-radial-gradient(center, ellipse, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
                  background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.35) 0%, rgba(255, 255, 255, 0) 80%);
                  transition-duration: 0.3s;
                  transition-property: transform, opacity;
            }

            .hoverable:hover, .hoverable:active, .hoverable:focus{
                  transform: translateY(-5px);
            }
            
            .hoverable:hover:before, .hoverable:active:before, .hoverable:focus:before{
                  opacity: 1;
                  transform: translateY(-5px);
            }

            @keyframes bounce-animation {
                  16.65% {
                    -webkit-transform: translateY(8px);
                    transform: translateY(8px);
                  }
                  33.3% {
                    -webkit-transform: translateY(-6px);
                    transform: translateY(-6px);
                  }
                  49.95% {
                    -webkit-transform: translateY(4px);
                    transform: translateY(4px);
                  }
                  66.6% {
                    -webkit-transform: translateY(-2px);
                    transform: translateY(-2px);
                  }
                  83.25% {
                    -webkit-transform: translateY(1px);
                    transform: translateY(1px);
                  }
                  100% {
                    -webkit-transform: translateY(0);
                    transform: translateY(0);
                  }
            }

            .bounce {
                  animation-name: bounce-animation;
                  animation-duration: 2s;
            }
        </style>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="https://fonts.googleapis.com/css2?family=Patua+One&display=swap" rel="stylesheet">
    </head>
    
    <body>
        <%@ include file="header.html" %>  <br>
        <%@page import="Controller.*"%>

        <%
            String id = request.getParameter("id");
            UserBean u = UserDAO.getRecordById(Integer.parseInt(id));
        %>
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-form">
                        <h2  style="text-align:center; font-family:Patua One; font-size:50px; margin-bottom:35px;">Edit Form</h2>
                        <form action="UpdateUser.jsp" method="post">
                            <input type="hidden" name="id" value="<%=u.getId()%>"/>
                            <div class="form-group ">
                                <label class="control-label" for="Username" style="font-size: 18px;">Name</label>
                                <input value="<%= u.getName()%>" autocomplete="off" class="form-control" data-val="true" data-val-required="Name required" name="name" placeholder="Enter Name" tabindex="3" type="text">
                                <span class="field-validation-valid text-danger" data-valmsg-for="Username" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="Password" style="font-size: 18px;">Password</label>
                                <input value="<%= u.getPassword()%>" autocomplete="off" class="form-control" data-val="true" data-val-required="Password required" name="password" placeholder="Enter Password" tabindex="3" type="password">
                                <span class="field-validation-valid text-danger" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group ">
                                <label class="control-label" for="Email" style="font-size: 18px;">Email</label>
                                <input value="<%= u.getEmail()%>" autocomplete="off" class="form-control" data-val="true" data-val-required="Email required" name="email" placeholder="Enter Email" tabindex="3" type="email">
                                <span class="field-validation-valid text-danger" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group ">
                                <label class="control-label" for="Salary" style="font-size: 18px;">Salary</label>
                                <input value="<%= u.getSalary()%>" autocomplete="off" class="form-control" data-val="true" data-val-required="Salary required" name="salary" placeholder="Enter Salary" tabindex="3" type="number">
                                <span class="field-validation-valid text-danger" data-valmsg-for="Salary" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group ">
                                <label class="control-label" for="Gender" style="font-size: 18px;">Gender</label><br>
                                <input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female
                                <span class="field-validation-valid text-danger" data-valmsg-for="Gender" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group ">
                                <label class="control-label" for="Position" style="font-size: 18px;">Position</label><br>
                                <select name="position" style="width:155px">
                                <option>Manager</option>
                                <option>Programmer</option>
                                <option>Designer</option>
                                <option>Other</option>
                                </select>
                                <span class="field-validation-valid text-danger" data-valmsg-for="Position" data-valmsg-replace="true"></span>
                            </div>
                            <div class="form-group">
                                <div class="col text-center">
                                    <button class="btn btn-success btn-lg" tabindex="3" type="submit" value="Edit User">Submit</button>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        <div class="container body-content">
            <hr />
            <footer>
                <p style="text-align:center">&copy;Amel Evelyn Waldo Website</p>
            </footer>
        </div>
        
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    </body>
    
</html>