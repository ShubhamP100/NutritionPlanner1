<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | EditUser</title>

<jsp:include page="Admincss.jsp"></jsp:include>

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>
<!-- 
<link href="css/dataTables.css"></link>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>
-->
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>EditUser</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">EditUser</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">
										Users<span>/all</span>
									</h5>

                  <h2>EditPage</h2>
          
    <form action="updateuser?userId=${user.userId}" method="post">
        <input type="hidden" name="id" value="${user.userId}" />

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


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="Adminjs.jsp"></jsp:include>
	
	<!-- js files
	 <script src="js/dataTables.js"></script>
    <script src="js/jquery-3.7.1.min.js"></script>
	
	 -->
	

	  
  
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>  
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.js"></script>

	<script type="text/javascript"> // idr yeh text/js likha he

	
	</script>

</body>
</html>