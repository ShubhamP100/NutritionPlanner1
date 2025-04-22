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
      <a class="nav-link text-success fw-bold" href="homee">
        <i class="bi bi-house-door-fill"></i>
        <span>Dashboard</span>
      </a>
    </li>

    <!-- Goals Section -->
    <li class="nav-item">
      <a class="nav-link collapsed text-success" data-bs-target="#goals-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-bullseye"></i><span>Goals</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="goals-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li>
          <a href="add-goal">
            <i class="bi bi-circle"></i><span>Add Goal</span>
          </a>
        </li>
        
      </ul>
    </li>
    
    <!-- Register detais -->
    <li class="nav-item">
      <a class="nav-link text-success" href="newuser">
        <i class="bi bi-calculator"></i>
        <span>Register</span>
      </a>
    </li>

    <!-- Meals Section -->
    <li class="nav-item">
      <a class="nav-link collapsed text-success" data-bs-target="#meals-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-egg-fried"></i><span>Nutrionist</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="meals-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        
        <li>
          <a href="shownutri">
            <i class="bi bi-circle"></i><span>List nutrionist</span>
          </a>
        </li>
      </ul>
    </li>


   
    <li class="nav-item">
      <a class="nav-link collapsed text-success" data-bs-target="#meals-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-egg-fried"></i><span>Meals</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
	  
      <ul id="meals-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        
        <li>
          <a href="foodmeal"> 
            <i class="bi bi-circle"></i><span>View Meal</span>
          </a>
        </li>
      </ul>
	  
	  
    </li>
	
	-->

   
    

   

    <!-- Profile -->
    <li class="nav-item">
      <a class="nav-link text-success" href="/gotopersonalprofile">
        <i class="bi bi-person-circle"></i>
        <span>Profile</span>
      </a>
    </li>

    <!-- Logout -->
    <li class="nav-item">
      <a class="nav-link text-danger" href="/logout">
        <i class="bi bi-box-arrow-right"></i>
        <span>Logout</span>
      </a>
    </li>

  </ul>
</aside><!-- End Sidebar-->
