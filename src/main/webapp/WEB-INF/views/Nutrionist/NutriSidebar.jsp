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
          <a href="listgoal">
            <i class="bi bi-circle"></i><span>List Goal</span>
          </a>
        </li>
      </ul>
    </li>
    
    
    <!-- Meals Section 
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
	
	-->


    <!-- Meals Section 
    <li class="nav-item">
      <a class="nav-link collapsed text-success" data-bs-target="#meals-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-egg-fried"></i><span>Meals</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="meals-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        
        <li>
          <a href="/user/list-meal">
            <i class="bi bi-circle"></i><span>List Meal</span>
          </a>
        </li>
      </ul>
    </li>
	
	<li class="nav-item">
	     <a class="nav-link collapsed text-success" data-bs-target="#meals-nav" data-bs-toggle="collapse" href="#">
	       <i class="bi bi-egg-fried"></i><span>Fooditems</span><i class="bi bi-chevron-down ms-auto"></i>
	     </a>
	     <ul id="meals-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
	       
	       <li>
	         <a href="add-item">
	           <i class="bi bi-circle"></i><span>Add Fooditem</span>
	         </a>
	       </li>
		   <li>
		   	  <a href="list-item">
		   	       <i class="bi bi-circle"></i><span>List Fooditem</span>
		   	      </a>
		    </li>
	     </ul>
	   </li>
	   -->

    <!-- Calorie Calculator -->
    
    
    <!-- Charts of user -->
    
    

    <!-- Water Intake -->
    

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
