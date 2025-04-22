<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar" style="
  background: linear-gradient(to bottom, #a7d7c5, #88c8b4);
  min-height: 100vh;
  padding-top: 1rem;
  box-shadow: 2px 0 10px rgba(0,0,0,0.05);
">

  <ul class="sidebar-nav" id="sidebar-nav">

    <!-- Dashboard -->
    <li class="nav-item">
      <a class="nav-link text-success fw-bold" href="admindashboard">
        <i class="bi bi-speedometer2"></i>
        <span>Dashboard</span>
      </a>
    </li>

    <!-- Users Section -->
    <li class="nav-item">
      <a class="nav-link text-success fw-bold" href="signup">
        <i class="bi bi-speedometer2"></i>
        <span>Add user</span>
      </a>
     
    </li>
    
    <li class="nav-item">
      <a class="nav-link text-success fw-bold" href="listuser">
        <i class="bi bi-speedometer2"></i>
        <span>Listuser</span>
      </a>
     
    </li>

    <!-- Nutritionist Section -->
    <li class="nav-item">
      <a class="nav-link collapsed text-success" data-bs-target="#reports-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-heart-pulse"></i><span>Reports</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="reports-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li>
          <a href="usersreport">
            <i class="bi bi-person-plus"></i><span>User reports</span>
          </a>
        </li>
        <li>
          <a href="NewNutrionist">
            <i class="bi bi-list-task"></i><span>List Nutritionist</span>
          </a>
        </li>
      </ul>
    </li>

    <!-- Manage Section -->
    <li class="nav-heading text-success">Manage</li>

    <li class="nav-item">
      <a class="nav-link collapsed text-success" href="personalprofile">
        <i class="bi bi-person-circle"></i>
        <span>Profile</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed text-danger" href="login">
        <i class="bi bi-box-arrow-in-right"></i>
        <span>Login</span>
      </a>
    </li>

  </ul>
</aside><!-- End Sidebar-->
