<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>


<title>Nutrition Planner</title>

<jsp:include page="Nutricss.jsp"></jsp:include>

</head>
<body>
 
  <jsp:include page="NutriHeader.jsp"></jsp:include>
  <jsp:include page="NutriSidebar.jsp"></jsp:include>
  
  <!-- -Main content -->
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1> 
      <nav>
        <ol class="breadcrumb">
        <!-- Admin ku jayega home page pe  -->
          
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

   <!-- Section starts -->
   
   <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
              <h2>${user.firstName}
				 </h2>
             
              
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered" role="tablist">
                
              
                
                

                <li class="nav-item" role="presentation">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit" aria-selected="false" tabindex="-1" role="tab">Edit Profile</button>
                </li>
</ul> <!-- ul ends here -->
              

                  

                  

                  
         

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit" role="tabpanel">

                  <!-- Profile Edit Form -->
                  <form>
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                      <div class="col-md-8 col-lg-9">
                        <img src="assets/img/profile-img.jpg" alt="Profile">
                        <div class="pt-2">
                          <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                          <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                        </div>
                      </div>
                    </div>
                    
                  

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Name</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="fullName" type="text" placeholder="Enter your name"   class="form-control" id="fullName" value="name">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
                      <div class="col-md-8 col-lg-9">
                        <textarea name="about" class="form-control" id="about" style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
                      </div>
                    </div>

                   

                    <div class="row mb-3">
                      <label for="Country" class="col-md-4 col-lg-3 col-form-label">City</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="country" type="text" placeholder="Enter your city" class="form-control" id="city" name="city">
                      </div>
                    </div>

                   

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Contactno</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="phone" type="text" placeholder="Enter your contact no" class="form-control" id="contactno" name="contactno">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" placeholder="Enter your email" class="form-control" id="email" name="email">
                      </div>
                    </div>
                    
                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">About us</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" placeholder="Enter about yourself" class="form-control" id="abutus" name="aboutus">
                      </div>
                    </div>
                    
                     <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Experiance</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" placeholder="Enter your experiance" class="form-control" id="experiance" name="experiance">
                      </div>
                    </div>
                    
                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Education</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" placeholder="Enter your education" class="form-control" id="education" name="education">
                      </div>
                    </div>

                    

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>

                <div class="tab-pane fade pt-3 active show" id="profile-settings" role="tabpanel">

                  <!-- Settings Form -->
                 

                    

                   
                </div>

                <div class="tab-pane fade pt-3" id="profile-change-password" role="tabpanel">
                  <!-- Change Password Form -->
                  <form>

                    
                  </form><!-- End Change Password Form -->

                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
        
      
    </section>
   
  </main>
  
  <!-- main over here -->
  
  <jsp:include page="NutriFooter.jsp"></jsp:include>
  
  
  <jsp:include page="Nutrijs.jsp"></jsp:include>
  <script src="assests/js/main.js"> </script>
</body>
</html>