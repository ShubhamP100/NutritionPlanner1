<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="col-md-6 col-lg-4 mb-4">
        <div class="card shadow border-0 rounded-4">
          <div class="card-body">
           
            <p class="mb-1"><strong>FirstName:</strong>${r.firstName}</p> 
            <p class="mb-1"><strong>Lastname:</strong> ${r.lastname}</p>
            <p class="mb-1"><strong>contactno:</strong> ${r.contactno} </p>
            
            <p class="mb-1"><strong>Education</strong> ${r.education}</p>
              <p class="mb-1"><strong>Gender</strong> ${r.gender}</p>
            
            <p class="mb-1"><strong>Experiance</strong> ${r.experiance}</p>
            <p class="mb-1"><strong>Aboutus</strong> ${r.aboutus}</p>
            
            
            
            <div class="d-flex justify-content-between mt-3">
              <a href="showgoal?nutriid=${r.userId}" class="btn btn-sm btn-outline-success">Sendgoal</a>
             
            </div>
          </div>
        </div>
      </div>


</body>
</html>