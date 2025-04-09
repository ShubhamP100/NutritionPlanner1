<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NutritionPlanner | Change Password</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    }
    
    body {
      background-color: #2d2d39;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    
    .password-container {
      display: flex;
      background-color: #1f1f2c;
      border-radius: 12px;
      overflow: hidden;
      width: 80%;
      max-width: 1000px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }
    
    .password-left {
      flex: 1;
      background-color: #272735;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: relative;
      padding: 2rem;
    }
    
    .illustration {
      max-width: 100%;
      height: auto;
    }
    
    .password-right {
      flex: 1;
      padding: 3rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    
    .password-header {
      margin-bottom: 2rem;
      text-align: center;
    }
    
    .password-header h1 {
      font-weight: 700;
      margin-bottom: 0.5rem;
    }
    
    .password-header span {
      font-weight: 400;
      opacity: 0.7;
    }
    
    .input-group {
      margin-bottom: 1.5rem;
      position: relative;
    }
    
    .input-label {
      display: block;
      margin-bottom: 0.5rem;
      font-size: 14px;
      color: #b8b8c0;
    }
    
    .form-control {
      width: 100%;
      padding: 0.8rem 1rem;
      background-color: #2d2d39;
      border: 1px solid #3d3d4d;
      border-radius: 6px;
      color: #fff;
      font-size: 16px;
      outline: none;
      transition: border-color 0.2s;
    }
    
    .form-control:focus {
      border-color: #4285f4;
    }
    
    .btn {
      width: 100%;
      padding: 0.8rem;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      font-weight: 600;
      cursor: pointer;
      transition: background-color 0.2s;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 0.5rem;
      margin-bottom: 1.5rem;
    }
    
    .btn-primary {
      background-color: #4285f4;
      color: white;
    }
    
    .btn-primary:hover {
      background-color: #3367d6;
    }
    
    .login-link {
      display: block;
      text-align: center;
      color: #4285f4;
      text-decoration: none;
      font-size: 15px;
    }
    
    .login-link:hover {
      text-decoration: underline;
    }
    
    .app-logo {
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 2rem;
      color: white;
    }
    
    .app-logo span {
      color: #4285f4;
    }
    
    .deco-dots {
      position: absolute;
      width: 200px;
      height: 200px;
      border-radius: 50%;
      border: 2px dashed rgba(66, 133, 244, 0.3);
      top: 25%;
      left: 35%;
      z-index: -1;
    }
    
    .deco-circle {
      position: absolute;
      width: 150px;
      height: 150px;
      border-radius: 50%;
      border: 2px solid rgba(66, 133, 244, 0.2);
      top: 15%;
      right: 15%;
      z-index: -1;
    }
    
    @media (max-width: 768px) {
      .password-container {
        flex-direction: column;
        width: 95%;
      }
      
      .password-left {
        display: none;
      }
      
      .password-right {
        padding: 2rem;
      }
    }
  </style>
</head>

<body>
  <div class="password-container">
    <div class="password-left">
      <div class="app-logo"><span>Nutrition</span>Planner</div>
      <img src="assets/img/nutionist.png" alt="Nutritionist" class="illustration" />
      <div class="deco-dots"></div>
      <div class="deco-circle"></div>
    </div>
    
    <div class="password-right">
      <div class="password-header">
        <h1>Change Password</h1>
        <span>Enter your details to update your password</span>
      </div>
      
      <form action="updatepassword" method="post">
        <div class="input-group">
          <label for="email" class="input-label">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
        </div>
        
        <div class="input-group">
          <label for="otp" class="input-label">OTP</label>
          <input type="text" class="form-control" id="otp" name="otp" placeholder="Enter OTP sent to your email">
        </div>
        
        <div class="input-group">
          <label for="password" class="input-label">New Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Enter new password">
        </div>
        
        <div class="input-group">
          <label for="confirmPassword" class="input-label">Confirm Password</label>
          <input type="password" class="form-control" id="confirmPassword" name="confirm password" placeholder="Confirm new password">
        </div>
        
        <button type="submit" class="btn btn-primary">UPDATE PASSWORD</button>
      </form>
      
      <a href="login" class="login-link">Back to Login</a>
    </div>
  </div>
</body>
</html>