<%-- 
    Document   : verification
    Created on : May 31, 2023, 9:34:29 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style_vertification.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>


        <form action="confirmChangePass" method="get">
            <div action="" class="email-form">
                <h1>Your Verification Code</h1>
                <P>Enter this verification code in field:</P>
                    <%
                        String wrongVerificationcP = (String) request.getSession().getAttribute("wrongVerificationcP");
                        if (wrongVerificationcP != null) {
                    %>
                <div class="alert alert-warning" style="color: red"><%= wrongVerificationcP%></div>
                <%
                        // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                        request.getSession().removeAttribute("wrongVerificationcP");
                    }
                %>
                <input type="text" name="vertification" id=""> <br>
                <input type="submit" value="submit">
            </div>
        </form>
    </body>
</html>
