<header id="user-header" class="header fixed-top d-flex align-items-center justify-content-between px-3" style="background: linear-gradient(to right, #d1f2eb, #b2f7c4); box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); height: 70px;">

  <!-- Left Side: Logo and App Name -->
  <div class="d-flex align-items-center">
    <img src="assets/img/nutrition logo.jpeg" alt="Nutrition Logo" style="height: 40px; width: 40px; border-radius: 50%; object-fit: cover;">
    <h4 class="ms-2 mb-0 fw-bold text-success">Nutrition Planner</h4>
  </div> 

  <!-- Middle Spacer (just design background space) -->
  <div class="d-none d-md-block flex-grow-1 px-5 text-center">
    <!-- Optional title -->
    <span class="fw-semibold text-muted fs-5">Track your health, plan your meals</span>
  </div>
  
  

  <!-- Right Side: Profile dropdown -->
  <div class="dropdown">
    <a href="#" class="d-flex align-items-center text-decoration-none dropdown-toggle" data-bs-toggle="dropdown">
      <img src="assets/img/profile-img.jpg" alt="User" class="rounded-circle" style="height: 40px; width: 40px;">
      <span class="ms-2 d-none d-sm-inline text-dark fw-medium">${user.firstName}</span>
    </a>
    
    
    <ul class="dropdown-menu dropdown-menu-end shadow">
      <li><h6 class="dropdown-header">${user.firstName} ${user.lastname}<br><small>${user.role}</small></h6></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="gotopersonalprofile"><i class="bi bi-person me-2"></i> My Profile</a></li>
      <li><a class="dropdown-item" href="edituserprofile"><i class="bi bi-gear me-2"></i> Edit Profile</a></li>
      <li><a class="dropdown-item" href="logout"><i class="bi bi-box-arrow-right me-2"></i> Logout</a></li>
    </ul>
  </div>
</header>
