<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Nutrition Planner</title>

<jsp:include page="Nutricss.jsp"></jsp:include>
<style>
.card {
    transition: 0.3s;
    background-color: #f6f9ff;
    border: none;
    border-radius: 16px;
}

.card:hover {
    transform: translateY(-5px);
}

.card-header-img {
   /* relative to WebContent or webapp */
 display:flex;
 flex-direction:row;
 justify-content:center;
 align-items:center;
  height: 200px;
  oveflow:hidden;
  width: 100%;
}

.bg-img{
background-image: url('assets/img/dumble.jpeg'); /
  background-size: contain;
  height:100px;
  width:120px;
  background-position-y: center;
  background-repeat: no-repeat;
}


.card-header-img i {
    font-size: 48px;
    color: white;
}

.badge-box {
    padding: 10px;
    border-radius: 10px;
    font-weight: bold;
}

.bg-carb { background-color: #e0f8e0; }
.bg-fat { background-color: #fff9d6; }
.bg-protein { background-color: #eee6ff; }
.bg-weight { background-color: #d6e9ff; }
.bg-height { background-color: #ffe6e6; }

.add-meal-btn {
    background-color: #b19cd9;
    color: white;
    font-weight: bold;
}
</style>
</head>
<body>

<jsp:include page="NutriHeader.jsp"></jsp:include>
<jsp:include page="NutriSidebar.jsp"></jsp:include>

<main id="main" class="main">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card shadow-lg">
                    
                    <!-- Image Section -->
                    <div class="card-header-img">
                        <!-- Bootstrap icon for fitness -->
                        <div class="bg-img">
                           
                        </div>
                    </div>

                    <!-- Details Section -->
                    <div class="card-body p-4">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="fw-bold">Muscle mass</label>
                                <p class="form-control bg-light">${table.targetMuscleMass}</p>
                            </div>
                            
                            <div class="col-md-6">
                                <label class="fw-bold">Calorie Goal</label>
                                <p class="form-control bg-light">${table.calorieIntakeGoal}
                            </div>
                        </div>

                        <!-- Macros -->
                        <div class="row mb-3 text-center">
                            <div class="col-md-4">
                                <div class="badge-box bg-carb">Carb intake<br><strong>${table.carbIntakeGoal}</strong></div>
                            </div>
                            <div class="col-md-4">
                                <div class="badge-box bg-fat">Protien intake<br><strong>${table.proteinIntakeGoal}</strong></div>
                            </div>
                            <div class="col-md-4">
                                <div class="badge-box bg-protein">Fat intake<br><strong>${table.fatIntakeGoal}</strong></div>
                            </div>
                        </div>

                        <!-- Target Goals -->
                        <div class="row mb-3">
                        <h1>Target Goals</h1>
                            <div class="col-md-6">
                                <label class="fw-bold">Target Weight</label>
                                <p class="form-control bg-weight">${table.targetWeight}</p>
                            </div>
                            
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="fw-bold">Target Date</label>
                                <p class="form-control bg-light"><i class="bi bi-calendar-week"></i>${table.targetDate }</p>
                            </div>
                            <div class="col-md-6">
                                <label class="fw-bold">Goal Type</label>
                                <p class="form-control bg-light">${table.goalType}</p>
                            </div>
                        </div>

                        <!-- Add Meal Button -->
                       <a href="items?userId=${table.userId}"><div class="d-grid mt-4">
                            <button class="btn add-meal-btn rounded-3"><i class="bi bi-plus-circle"></i> Add Meal</button>
                        </div></a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="NutriFooter.jsp"></jsp:include>
<jsp:include page="Nutrijs.jsp"></jsp:include>
<script src="assests/js/main.js"></script>
</body>
</html>
