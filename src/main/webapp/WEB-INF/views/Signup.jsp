
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    .container {
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 350px;
    } 
    
    h2 {
        text-align: center;
        color: #333;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }

    input[type="text"], input[type="password"], input[type="city"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    .gender-group {
        display: flex;
        gap: 10px;
        margin-top: 5px;
    }

    .btn {
        background: #28a745;
        color: white;
        border: none;
        padding: 10px;
        width: 100%;
        margin-top: 15px;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
    }

    .btn:hover {
        background: #218838;
    }

    .form-group {
        margin-bottom: 15px;
    }
</style>
</head>
<body>

<div class="container">
   <h2>Sign-up</h2> 
   
   <form action="saveuser" method="post"> 
      
      <div class="form-group">
         <label for="firstname">First Name</label>
         <input type="text" placeholder="Enter the first name" id="firstName" name="firstName">
      </div>

      <div class="form-group">
         <label for="lastname">Last Name</label>
         <input type="text" placeholder="Enter the last name" id="lastname" name="lastname">
      </div>

      <div class="form-group">
         <label for="email">Email</label>
         <input type="text" placeholder="Enter your email" id="email" name="email">
      </div>

      <div class="form-group">
         <label for="password">Password</label>
         <input type="password" placeholder="Enter your password" id="password" name="password">
      </div>

      <div class="form-group">
         <label for="confirm-password">Confirm Password</label>
         <input type="password" placeholder="Re-enter your password" id="confirm-password" name="confirm-password">
      </div>

      <div class="form-group">
         <label>Gender</label>
         <div class="gender-group"> 
            <input type="radio" name="gender" value="male"> Male
            <input type="radio" name="gender" value="female"> Female
            <input type="radio" name="gender" value="other"> Other
         </div>
      </div>

      <div class="form-group">
         <label for="city">City</label>
         <input type="text" placeholder="Enter your city" id="city" name="city">
      </div>
      
      <div class="form-group">
       <select id="role" class = "text-gray-500 border-gray-400 border-1 text-lg rounded-md h-10 w-full" name="role" required>
                <option value="">Select Role</option>
                <option value="user">USER</option>
                <option value="admin">ADMIN</option>
                <option value="nutrionist">Nutritionist</option>
            </select>
      </div>
     
      <button  type="submit" class="btn">Sign Up</button>
      
      
   </form> 
   <a href="login">Login</a> 
</div>

</body>
</html>
