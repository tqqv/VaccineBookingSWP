<%-- 
    Document   : register
    Created on : May 22, 2023, 4:30:51 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Registration Form in HTML CSS</title>
        <!---Custom CSS File--->
        <link href="css/style_RG.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section class="container">
            <header>Registration Form</header>
            <form action="register" method="post" class="form">
                <div class="input-box">
                    <label>Full Name</label>
                    <input type="text" placeholder="Enter full name" name="name" required />
                </div>

                <div class="column">
                    <div class="input-box">
                        <label>Email Address</label>
                        <input type="email" placeholder="Enter email address" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Wrong format email"/>

                        <%
                            String emailExist = (String) request.getSession().getAttribute("emailExist");
                            if (emailExist != null) {
                        %>
                        <div class="alert alert-warning" style="color: red"><%= emailExist%></div>
                        <%
                                // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                request.getSession().removeAttribute("emailExist");
                            }
                        %>

                    </div>
                    <div class="input-box">
                        <label>Health Insurance</label>
                        <input type="text" placeholder="Enter Health Insurances" name="healthInsurance" required pattern="([0-9]{15})\b" title="Wrong health insurance"/>
                        <%
                            String healthInsuranceExist = (String) request.getSession().getAttribute("healthInsuranceExist");
                            if (healthInsuranceExist != null) {
                        %>
                        <div class="alert alert-warning" style="color: red"><%= healthInsuranceExist%></div>
                        <%
                                // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                request.getSession().removeAttribute("healthInsuranceExist");
                            }
                        %>

                    </div>
                </div>


                <div class="column">
                    <div class="input-box">
                        <label>Password</label>
                        <input type="password" placeholder="Enter password" name="password" required pattern=".{8,}" title="Must contain at least 8 or more characters" />
                    </div>
                    <div class="input-box">
                        <label>Phone number</label>
                        <input pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b" type="text" name="phone" placeholder="Enter phone number" required title="Wrong phone number" />
                        <%
                            String phonelExist = (String) request.getSession().getAttribute("phonelExist");
                            if (phonelExist != null) {
                        %>
                        <div class="alert alert-warning" style="color: red"><%= phonelExist%></div>
                        <%
                                // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                request.getSession().removeAttribute("phonelExist");
                            }
                        %>


                    </div>

                </div>


                <div class="column">
                    <div class="input-box">
                        <label>Identification</label>
                        <input type="text" pattern="([0-9]{12})\b" title="Must contain 12 digits" placeholder="Enter Identification number" name="identification" required />
                        <%
                            String identificationExist = (String) request.getSession().getAttribute("identificationExist");
                            if (identificationExist != null) {
                        %>
                        <div class="alert alert-warning" style="color: red"><%= identificationExist%></div>
                        <%
                                // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                request.getSession().removeAttribute("identificationExist");
                            }
                        %>


                    </div>
                    <div class="input-box">
                        <label>Birth Date</label>
                        <input type="date" placeholder="Enter birth date" required name ="dob"/>
                    </div>
                </div>
                <div class="gender-box">
                    <h3>Gender</h3>
                    <div class="gender-option">
                        <div class="gender">
                            <input  value="false" type="radio" id="check-male" name = "gender" checked />
                            <label for="check-male">Female</label>
                        </div>
                        <div class="gender">
                            <input  value="true" type="radio" id="check-female" name = "gender" />
                            <label for="check-female">Male</label>
                        </div>
                        <a href="login.jsp" style="margin-left: 40%"> Login now</a>
                    </div>
                                           

                </div>
                <input type="submit" value="submit"  />
            </form>
        </section>
    </body>
</html>

