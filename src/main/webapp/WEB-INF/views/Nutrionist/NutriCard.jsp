<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutritionists</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

<style>
  body {
    background-color: #f0fdf4;
    padding: 30px 10px;
  }

  .card-wrapper {
    max-width: 600px;
    margin: 0 auto;
  }

  .card {
    margin-bottom: 25px;
    border-radius: 16px;
    background-color: #ffffff;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    transition: transform 0.3s ease;
  }

  .card:hover {
    transform: translateY(-4px);
  }

  .card-body p {
    font-size: 0.95rem;
    color: #333;
  }
</style>
</head>
<body>

<div class="card-wrapper">
  <c:forEach var="r" items="${list}">
    <div class="card shadow border-0">
      <div class="card-body">
        <p class="mb-1"><strong>First Name:</strong> ${r.firstName}</p>
        <p class="mb-1"><strong>Last Name:</strong> ${r.lastname}</p>
        <p class="mb-1"><strong>Contact No:</strong> ${r.contactno}</p>
        <p class="mb-1"><strong>Education:</strong> ${r.education}</p>
        <p class="mb-1"><strong>Gender:</strong> ${r.gender}</p>
        <p class="mb-1"><strong>Experience:</strong> ${r.experiance}</p>
        <p class="mb-1"><strong>About Us:</strong> ${r.aboutus}</p>

        <div class="d-flex justify-content-between mt-3">
          <a href="showgoal?nutriid=${r.userId}" class="btn btn-sm btn-outline-success">Send Goal</a>
        </div>
      </div>
    </div>
  </c:forEach>
</div>

</body>
</html>
