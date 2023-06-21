
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style_vertification.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>


        <form action="vertificationEmailController" method="get">
            <div action="" class="email-form">
            <h1>Your Verification Code</h1>
            <P>Enter this verification code in field:</P>
            <%
                            String wrongVerification = (String) request.getSession().getAttribute("wrongVerification");
                            if (wrongVerification != null) {
                        %>
                        <div class="alert alert-warning" style="color: red"><%= wrongVerification%></div>
                        <%
                                // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                request.getSession().removeAttribute("wrongVerification");
                            }
                        %>
            <input type="text" name="vertification" id=""> <br>
            <input type="submit" value="submit">
        </div>
        </form>
    </body>
</html>
