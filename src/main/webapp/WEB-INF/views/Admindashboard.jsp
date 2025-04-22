<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>


<title>Nutrition Planner</title>
<script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
<jsp:include page="Admincss.jsp"></jsp:include>
</head>
<body>
 
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>
  
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

    <section class="section dashboard">
      

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">
             <!--  
                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li> 

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>
                -->

                <div class="card-body">
                  <h5 class="card-title">Total users</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalUsers}</h6>
                      

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">
 <!-- - -->
                

                <div class="card-body">
                  <h5 class="card-title">Total nutrionist </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalnutritionists}</h6>
                      
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-6">

              <div class="card info-card customers-card">

                

                <div class="card-body">
                  <h5 class="card-title">Total goals</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${goalsApproved}</h6>
                     

                    </div>
                  </div>

                </div>
                
                
                
              </div>

            </div><!-- End Customers Card -->
            
            
            
            <div class="col-xxl-4 col-xl-6">

              <div class="card info-card customers-card">

                

                <div class="card-body">
                  <h5 class="card-title">Total Fooditems </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${foodItems}</h6>
                     

                    </div>
                  </div>

                </div>
                
                
                
              </div>

            </div><!-- End Customers Card -->
            
            
            

            <!-- reports -->
            <div class="col-12">
              <div class="card">

                
                
            <!-- End of reports -->

            <!-- Recent Sales -->
            <!-- End Recent Sales -->

            <!-- Top Selling -->
            <!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <!-- End Right side columns -->

      </div>
      
      
   <div class="h-[800px] w-[800px]">  <!-- h-[200px] w-[200px] -->
  <canvas id="myChart"></canvas>
</div>
<div class=" h-[800px] w-[800px]">  <!-- h-[200px] w-[200px] -->
  <canvas id="piechart"></canvas>
</div>

    </section>



  </main>
  
  <!-- main over here -->
  
  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="Adminjs.jsp"></jsp:include>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="assets/js/main.js"> </script>
  
  <script>
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Jan', 'Feb', 'March', 'April', 'May', 'Jun','July','Aug','Sept','Oct','Nov','Dec'],
      datasets: [{
        label: 'Users per months',
        data:[${month[0]},${month[1]} , ${month[2]}, ${month[3]}, ${month[4]}, ${month[5]},${month[6]},${month[7]},
        
        ${month[8]},${month[9]},${month[10]},${month[11]}],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
<!-- 
<script>
  const ctx = document.getElementById('piechart');

  new Chart(ctx, {
    type: 'pie',
    data: {
      labels: [],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>

-->

</body>
</html>