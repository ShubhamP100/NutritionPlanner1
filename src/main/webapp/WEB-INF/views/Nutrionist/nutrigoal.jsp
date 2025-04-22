<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="Nutricss.jsp"></jsp:include>



<link href="css/dataTables.css"></link>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>
<script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>

</head>
<body>
	<jsp:include page="NutriHeader.jsp"></jsp:include>

	<jsp:include page="NutriSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
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

  <h2>List of User</h2>
           <table class="table datatable datatable-table table-hover" id="myTable">
										<thead>
											<tr>
												<th>fullname</th>
												<th>goal_type</th>
												<th>createdat</th>
												<th>email</th>
												
												
											    <th>Action</th>
											</tr>
										</thead>
				       <tbody>
							<c:forEach items="${goals}" var="g">
									<tr>
										
                                        <td>${g.firstname} ${g.lastname}</td>
                                        <td>${g.goal_type}</td>
                                        
                                        <td>${g.created_at}</td>
										<td>${g.email}</td>
                                        
										<c:if test="${g.status eq 'approved'}">   
										<td>
									   <h1>Pending</h1>  		
									    
									</td>
									</c:if>
									
									 
									 <c:if test = "${g.status eq 'pending'}">
										<td class = "flex gap-2">
											<p>pending</p>
											
											<a href="viewparticulargoal?goalid=${g.goal_id}" class="btn btn-warning btn-sm">
																				    <i class="fas fa-edit">View more </i> 
																				</a>                
											     
										</td>
									 
									 </c:if>
										
                                       
                                        
                                         
                                          
                                         </tr>
                                         </c:forEach>
                                             </tbody>
									</table>


 
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


	<jsp:include page="NutriFooter.jsp"></jsp:include>

	<jsp:include page="Nutrijs.jsp"></jsp:include>
	
	<!-- js files
	 <script src="js/dataTables.js"></script>
    <script src="js/jquery-3.7.1.min.js"></script>
	
	 -->
	

	  
  
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>  
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.js"></script>

	<script type="text/javascript"> // idr yeh text/js likha he

	$(document).ready( function () {
	    $('#myTable').DataTable();
	} );
	</script>

</body>
</html>