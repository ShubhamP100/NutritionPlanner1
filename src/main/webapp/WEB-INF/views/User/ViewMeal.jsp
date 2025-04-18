<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
  <!-- User Home Page -->
  <meta charset="UTF-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <title>Nutrition Planner</title>

  <style>
    html, body {
      height: 100%;
      margin: 0;
    }

    body {
      display: flex;
      flex-direction: column;
    }

    #main {
      flex: 1;
      padding: 20px;
      overflow-y:scroll;
      height:530px;
      box-sizing: border-box;
      background-color: #f8f9fa; /* optional light background */
    }

    footer {
      background-color: #222;
      color: white;
      padding: 10px;
      text-align: center;
    }
  </style>

  <jsp:include page="Usercss.jsp"></jsp:include>
</head>

<body>
  <jsp:include page="Header.jsp" /> 
  <jsp:include page="Sidebar.jsp" /> 

  <main id="main" class="main">
    <!-- Dashboard Section -->
    <section class="section dashboard mt-4 pt-2">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-3 col-md-6 mb-4">
              <div class="card info-card sales-card">
                <div class="card-body">
                
                  <h5 class="card-title">GoalType</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${individualgoal.goalType}</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span>
                      <span class="text-muted small pt-2 ps-1">increase</span>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-3 col-md-6 mb-4 ">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Target Weight</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${individualgoal.targetWeight}g</h6>
                      <span class="text-success small pt-1 fw-bold"></span>
                      <span class="text-muted small pt-2 ps-1">increase</span>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-3 col-md-6 mb-4">
              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title">Nutritional values</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span>
                      <span class="text-muted small pt-2 ps-1">decrease</span>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Customers Card -->
            
         
                 
            <div class="col-xxl-3 col-md-6 mb-4">
              <div class="card info-card customers-card">
                <div class="card-body" style = "display:flex; flex-direction:column; gap:15px; align-items:start; justify-content:center; margin-top:10px;">
                  <a href = "foodmeal"><h5 class="card-title text-2xl" style = "padding:0; margin:0; ">Breakfast</h5></a>
                  <a href = "foodmeal?mealtype=lunch"><h5 class = "card-title text-2xl" style = "padding:0; margin:0; ">Lunch</h5></a>
                  <a href = "foodmeal?mealtype=dinner"><h5 class = "card-title text-2xl" style = "padding:0; margin:0; ">Dinner</h5></a>
                </div>
              </div>
            </div>
            
            
            
            
            

          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns (add your future widgets/cards here) -->

      </div>
    </section>
    
    <!-- Talwind css div -->
    
    <div class="mt-6 p-6 border-2 border-dashed border-blue-400 rounded-xl bg-blue-50 shadow-md text-center h-auto main grid grid-cols-12 rounded-lg overflow-hidden gap-4  ">
     
    
         
<c:forEach items = "${foods}" var = "oneitem">

<c:set value = "${oneitem}" var = "food" scope = "request"/>
<jsp:include page = "../Nutrionist/Foodcard.jsp">
   <jsp:param name="salt" value="${foruser}"/>
 </jsp:include>
</c:forEach>
         
 


 



  </div>
  
  </main>

  <jsp:include page="Footer.jsp"/>
  <jsp:include page="Userjs.jsp"/>
</body>
</html>
