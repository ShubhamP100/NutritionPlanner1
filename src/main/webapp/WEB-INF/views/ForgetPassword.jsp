<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget password</title>
</head>
<body>
      <form action="sendOtp" method="post">
        <label for="email">Email</label>
         <input type="text" placeholder="Enter your email" id="email" name="email">
       <br><br>
        <input type="submit" value="Help me!"/><br>
        </form>
        <br>
       <a href="login">Login</a>
</body>
</html>