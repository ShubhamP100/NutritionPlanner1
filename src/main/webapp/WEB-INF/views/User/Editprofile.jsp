<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | EditUser</title>

<jsp:include page="Usercss.jsp"></jsp:include>

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>
<!-- 
<link href="css/dataTables.css"></link>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>
-->
</head>
<body> 
	<jsp:include page="Header.jsp"></jsp:include>

	<jsp:include page="Sidebar.jsp"></jsp:include>

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

		
	<form action="updateuserprofile" method="post" enctype="multipart/form-data">
        <input type="hidden" name="userId" value="${user.userId}" />

        <label>First-Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"  /><br><br>
        
        <label>Last-Name:</label>
        <input type="text" name="lastname" value="${user.lastname}"  /><br><br>
        

        <label>Email:</label>
        <input type="email" name="email" value="${user.email}"  /><br><br>

        <label>Phone:</label>
        <input type="text" name="contactno" value="${user.contactno}" /><br><br>
        
         <label>City</label>
        <input type="text" name="city" value="${user.city}" /><br><br>
        
        <label>Role</label>
        <input type="text" name="role" value="${user.role}" /><br><br>
        <label>Image</label>
		
		<input type="file" name="image" value="${user.profilepic}"><br><br>
        
		<c:if test = "${role eq 'nutrionist'}"> 
        <label>About us</label>
        <input type="text" name="aboutus" value="${user.aboutus}" /><br><br>
        
         <label>Experiance</label>
        <input type="text" name="experiance" value="${user.experiance}" /><br><br>
        
        <label>Education</label>
        <input type="text" name="education" value="${user.education}" /><br><br>
		
		</c:if>
        <button type="submit">Update</button>
    </form>
                            
                            
     <!-- Datatable ends here -->
									


								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="Footer.jsp"></jsp:include>

	<jsp:include page="Userjs.jsp"></jsp:include>
	
	<!-- js files
	 <script src="js/dataTables.js"></script>
    <script src="js/jquery-3.7.1.min.js"></script>
	
	 -->
	

	  
  
    

	
	
</body>
</html>