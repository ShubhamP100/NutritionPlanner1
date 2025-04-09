<!doctype html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NutritionPlanner | Login</title>
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
    
    .login-container {
      display: flex;
      background-color: #1f1f2c;
      border-radius: 12px;
      overflow: hidden;
      width: 80%;
      max-width: 1000px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }
    
    .login-left {
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
    
    .login-right {
      flex: 1;
      padding: 3rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    
    .login-header {
      margin-bottom: 2rem;
      text-align: center;
    }
    
    .login-header h1 {
      font-weight: 700;
      margin-bottom: 0.5rem;
    }
    
    .login-header span {
      font-weight: 400;
      opacity: 0.7;
    }
    
    .input-group {
      margin-bottom: 1.5rem;
      position: relative;
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
    
    .remember-forgot {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 1.5rem;
    }
    
    .remember-me {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    
    .checkbox {
      accent-color: #4285f4;
    }
    
    .forgot-link {
      color: #4285f4;
      text-decoration: none;
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
    }
    
    .btn-primary {
      background-color: #4285f4;
      color: white;
      margin-bottom: 1.5rem;
    }
    
    .btn-primary:hover {
      background-color: #3367d6;
    }
    
    .divider {
      display: flex;
      align-items: center;
      margin: 1.5rem 0;
      color: #8f8f9d;
    }
    
    .divider::before,
    .divider::after {
      content: "";
      flex: 1;
      height: 1px;
      background-color: #3d3d4d;
    }
    
    .divider span {
      padding: 0 1rem;
    }
    
    .btn-facebook {
      background-color: #3b5998;
      color: white;
      margin-bottom: 1rem;
    }
    
    .btn-facebook:hover {
      background-color: #344e86;
    }
    
    .btn-twitter {
      background-color: #1da1f2;
      color: white;
    }
    
    .btn-twitter:hover {
      background-color: #0d95e8;
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
      .login-container {
        flex-direction: column;
        width: 95%;
      }
      
      .login-left {
        display: none;
      }
      
      .login-right {
        padding: 2rem;
      }
    }
  </style>
</head>

<body>
  <div class="login-container">
    <div class="login-left">
      <div class="app-logo"><span>Nutrition</span>Planner</div>
      <img src="assets/img/nutionist.png"/>
      <div class="deco-dots"></div>
      <div class="deco-circle"></div>
    </div>
    
    <div class="login-right">
    <%
    String error = request.getParameter("error");
    if ("true".equals(error)) {
%>
    <div style="color: red; margin-bottom: 1rem;">Invalid email or password</div>
<%
    }
%>
    
      <div class="login-header">
        <h1>Welcome Back</h1>
        <span>Sign in to start your session</span>
      </div>
      
      <form action="authenticate" method="post">
        <div class="input-group">
          <input type="email" class="form-control" name="email" placeholder="Email address" />
        </div>
        
        <div class="input-group">
          <input type="password" class="form-control" name="password" placeholder="Password" />
        </div>
        
        <div class="remember-forgot">
          <div class="remember-me">
            <input type="checkbox" id="remember" class="checkbox" />
            <label for="remember">Remember me</label>
          </div>
          <a href="forgetpassword" class="forgot-link">Forgot password?</a>
        </div>
        
        <button type="submit" class="btn btn-primary">SIGN IN</button>
      </form>
       <!-- 
      <div class="divider">
        <span>OR</span>
      </div>
      
      <span>Don't have an account</span>
       <button type="submit"  class="btn btn-primary">Sign-up</button>
      
      -->
      
      
    </div>
  </div>
</body>
</html>