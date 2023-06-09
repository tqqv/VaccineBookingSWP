<%-- 
    Document   : editProfile
    Created on : Jun 3, 2023, 10:03:00 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style_EProfile.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
              integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <div class="my-5">
                        <h3>My Profile</h3>
                        <hr>
                    </div>

                    <form id="infor" method="post" action="updateInfor" class="file-upload">
                        <div class="row mb-5 gx-5">

                            <div class="col-xxl-8 mb-5 mb-xxl-0">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">Contact detail</h4>

                                        <div class="col-md-6">
                                            <label class="form-label">Full name *</label>
                                            <input required name="name" type="text" class="form-control" placeholder aria-label="First name">
                                        </div>

                                        <div class="col-md-6">
                                            <label class="form-label">Email Address *</label>
                                            <input required name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Wrong format email" type="email" class="form-control" placeholder aria-label="Last name">
                                        </div>

                                        <div class="col-md-6">
                                            <label class="form-label">Health Insurance *</label>
                                            <input required name="healthInsurance" pattern="([0-9]{15})\b" title="Wrong health insurance" type="text" class="form-control" placeholder aria-label="Phone number">
                                            <%
                                                String ExistHealthInsurance = (String) request.getSession().getAttribute("ExistHealthInsurance");
                                                if (ExistHealthInsurance != null) {
                                            %>
                                            <div style="color: red"><%= ExistHealthInsurance%></div>
                                            <%
                                                    // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                    request.getSession().removeAttribute("ExistHealthInsurance");
                                                }
                                            %>
                                        </div>


                                        <div class="col-md-6">
                                            <label  class="form-label">Phone number *</label>
                                            <input required name="phone" attern="(84|0[3|5|7|8|9])+([0-9]{8})\b" type="phone" class="form-control" id="inputEmail4">
                                        </div>

                                        <div class="col-md-6">
                                            <label class="form-label">Identification *</label>
                                            <input required name="identification" pattern="([0-9]{12})\b" type="text" class="form-control" placeholder aria-label="Phone number">
                                            <%
                                                String ExistIdentification = (String) request.getSession().getAttribute("ExistIdentification");
                                                if (ExistIdentification != null) {
                                            %>
                                            <div style="color: red"><%= ExistIdentification%></div>
                                            <%
                                                    // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                    request.getSession().removeAttribute("ExistIdentification");
                                                }
                                            %>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Birth Date *</label>
                                            <input required name ="dob" type="date" class="form-control" placeholder aria-label="Phone number">
                                        </div>
                                        <div class="col-md-6">
                                            <h6>Gender</h6>
                                            <div class="gender-option">
                                                <div class="gender" >
                                                    <input  value="false" type="radio" id="check-male" name = "gender" checked />
                                                    <label for="check-male">Female</label>
                                                </div>
                                                <div class="gender">
                                                    <input  value="true" type="radio" id="check-female" name = "gender" />
                                                    <label for="check-female">Male</label>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="gap-3 d-md-flex justify-content-md-end text-center">
                                            <button type="submit" class="btn btn-primary btn-lg">Update</button>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <div class="col-xxl-4">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">Upload your profile photo</h4>
                                        <div class="text-center">

                                            <div class="square position-relative display-2 mb-3">
                                                <i
                                                    class="fas fa-fw fa-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                                            </div>

                                            <input type="file" id="customFile" name="file" hidden>
                                            <label class="mt-3 btn btn-success-soft btn-block" for="customFile">Upload</label>
                                            <button type="submit" class="mt-3 btn btn-danger-soft">Remove</button>

                                            <!--                                        <p class="text-muted mt-3 mb-0"><span class="me-1">Note:</span>Minimum size
                                                                                        300px x 300px</p>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>


                    <form id="changepass" method="post" action="updatePass">
                        <div class="row mb-5 gx-5">


                            <div class="col-xxl-6">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="my-4">Change Password</h4>

                                        <div class="col-md-12">
                                            <%
                                                String oldPassU = (String) request.getSession().getAttribute("oldPassU");
                                                if (oldPassU != null) {
                                            %>
                                            <div style="color: red"><%= oldPassU%></div>
                                            <%
                                                    // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                    request.getSession().removeAttribute("oldPassU");
                                                }
                                            %>
                                            <label for="exampleInputPassword1" class="form-label">Old password *</label>
                                            <input required name="oldPass" type="password" class="form-control" id="exampleInputPassword1">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="exampleInputPassword2" class="form-label">New password *</label>
                                            <input required name="newPass" type="password" class="form-control" id="exampleInputPassword2">
                                             <%
                                                String conflictPass = (String) request.getSession().getAttribute("conflictPass");
                                                if (conflictPass != null) {
                                            %>
                                            <div  style="color: red"><%= conflictPass%></div>
                                            <%
                                                    // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                    request.getSession().removeAttribute("conflictPass");
                                                }
                                            %>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="exampleInputPassword3" class="form-label">Confirm Password *</label>
                                            <input required name="reNewPass" type="password" class="form-control" id="exampleInputPassword3">
                                        </div>
                                        <div class="gap-3 d-md-flex justify-content-md-end text-center">
                                           
                                            <%
                                                String changpasssucess = (String) request.getSession().getAttribute("changpasssucess");
                                                if (changpasssucess != null) {
                                            %>
                                            <div  style="color: blue"><%= changpasssucess%></div>
                                            <%
                                                    // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                    request.getSession().removeAttribute("changpasssucess");
                                                }
                                            %>
                                            <button type="submit" class="btn btn-primary btn-lg">Update</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="gap-3 d-md-flex justify-content-md-end text-center">
                            <a href="home.jsp" type="button" class="btn btn-danger btn-lg">Back </a>
<!--                            <button type="button" class="btn btn-danger btn-lg"></button>-->
<!--                            <button type="submit" class="btn btn-primary btn-lg">Update profile</button>-->
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>

</html>
