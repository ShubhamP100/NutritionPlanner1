<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change password</title>
</head>
<body>
       <form action="updatepassword" method="post">
        
        Email <input type="text" name="email"/>
       <br><br>
       
       OTP: <input type="text" name="otp"/><br><br> 
		
		New Password: <input type="password" name="password"/><br><br> 
		Confirm Password: <input type="password" name ="confirm password" ><br><br>
	
		<input type="submit" value="Update Password"/>
       </form> 
       
       
       <a href="login">Login</a>
</body>
</html>