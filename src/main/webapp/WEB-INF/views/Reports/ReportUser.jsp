<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="../Admincss.jsp"></jsp:include>



<link href="css/dataTables.css"></link>
<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"></link>

      <link href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../AdminHeader.jsp"></jsp:include>

	<jsp:include page="../AdminSidebar.jsp"></jsp:include>

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
												<th>firstName</th>
												<th>lastname</th>
												<th>email</th>
												<th>contactno</th>
												<th>city</th>
													<th>role</th>
													
											</tr>
										</thead>
				       <tbody>
							<c:forEach items="${Usersreport}" var="us">
									<tr>
										
                                        <td>${us.firstName}</td>
                                        <td>${us.lastname}</td>
                                        
                                        <td>${us.email}</td>
                                        <td>${us.contactno}</td>
                                       
                                         <td>${us.city}</td>
                                          <td>${us.role}</td>
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


	<jsp:include page="../AdminFooter.jsp"></jsp:include>

	<jsp:include page="../Adminjs.jsp"></jsp:include>
	
	<!-- js files
	 <script src="js/dataTables.js"></script>
    <script src="js/jquery-3.7.1.min.js"></script>
	
	 -->
	

	  
  
   
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
 	<script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
 	<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.dataTables.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
 	<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.min.js"></script>
 	<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.min.js"></script>

	<script type="text/javascript"> // idr yeh text/js likha he
	
	 
 	$( document ).ready(function() {
 		//let table = new DataTable('#myTable');
 	
 		new DataTable('#myTable', {
 	 	    layout: {
 	 	        topStart: {
 	 	            buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
 	 	        }
 	 	    }
 	 	});
 	
 	});
 	
 	
 	
 	
 	
	
	
	</script>

</body>
</html>