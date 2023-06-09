<%-- 
    Document   : newpass
    Created on : Jun 1, 2023, 4:26:13 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create a New Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="css/styleChangePass.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4 form">
                <form action="newPass" method="POST" autocomplete="off">
                    <h2 class="text-center">New Password</h2>
                    <div class="form-group">
                        <input class="form-control" type="password" name="password" placeholder="Create new password" required pattern=".{8,}" title="Must contain at least 8 or more characters">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="cpassword" placeholder="Confirm your password" required >
                    </div>
                    <div class="form-group">
                        <input class="form-control button" type="submit" name="change-password" value="Change">
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
