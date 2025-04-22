<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- USer hoem page -->

<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>


<title>Nutrition Planner</title>

<jsp:include page="Usercss.jsp"></jsp:include>

<body>
 
  <jsp:include page ="Header.jsp"></jsp:include>
  <jsp:include page ="Sidebar.jsp"></jsp:include>
   
   <main id="main" class="main">
   
	<section class="nutrition-welcome-section d-flex justify-content-center align-items-center">
	  <div class="nutrition-box text-center shadow-sm">
	    <h1 class="nutrition-title">Welcome, <span class="username">${user.firstName}</span> 🥗</h1>
	    <p class="nutrition-subtext">Your journey to a healthier lifestyle starts here!</p>
	    
	    <div class="nutrition-grid mt-4">
	      <div class="nutrition-card">
	        <h4>Track Calories</h4>
	        <p>Monitor your daily intake & stay on goal.</p>
	      </div>
	      <div class="nutrition-card">
	        <h4>Plan Meals</h4>
	        <p>Create balanced meal plans tailored for you.</p>
	      </div>
	      <div class="nutrition-card">
	        <h4>Stay Hydrated</h4>
	        <p>Log your water intake and stay refreshed.</p>
	      </div>
	    </div>
	  </div>
	</section>

	<style>
	.nutrition-welcome-section {
	  height: 80vh;
	  background: linear-gradient(135deg, #e0f7e9, #c1f0dc);
	  padding: 40px 20px;
	  border-radius: 20px;
	  margin: 20px;
	}

	.nutrition-box {
	  background: #ffffff;
	  padding: 40px 30px;
	  border-radius: 16px;
	  max-width: 800px;
	  width: 100%;
	}

	.nutrition-title {
	  font-size: 2.5rem;
	  font-weight: bold;
	  color: #2f5d62;
	}

	.username {
	  color: #4caf50;
	}

	.nutrition-subtext {
	  font-size: 1.2rem;
	  color: #555;
	  margin-top: 10px;
	}

	.nutrition-grid {
	  display: grid;
	  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	  gap: 20px;
	  margin-top: 30px;
	}

	.nutrition-card {
	  background: #f1faf6;
	  border-radius: 12px;
	  padding: 20px;
	  box-shadow: 0 4px 8px rgba(0,0,0,0.05);
	  transition: transform 0.3s ease;
	}

	.nutrition-card:hover {
	  transform: translateY(-5px);
	}

	.nutrition-card h4 {
	  color: #2e7d32;
	  font-weight: bold;
	  margin-bottom: 10px;
	}

	.nutrition-card p {
	  color: #555;
	  font-size: 0.95rem;
	}
	</style>

   
   
  <!-- main over here -->
  </main>
  <jsp:include page="Footer.jsp"></jsp:include>
  
 

  <jsp:include page="Userjs.jsp"></jsp:include> 
 
  
</body>
</html>