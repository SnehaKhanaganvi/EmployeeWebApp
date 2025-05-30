<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #f0f2f5;
            font-family: 'Segoe UI', sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin-top: 50px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            font-weight: 600;
            color: #343a40;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-secondary {
            margin-left: 10px;
        }
    </style>
</head>
<body>
<div class="container d-flex justify-content-center">
    <div class="form-container">
        <h2 class="mb-4 text-center">➕ Add New Employee</h2>
        <form action="AddEmployeeServlet" method="post">
            <div class="form-group">
                <label for="empno">Employee Number</label>
                <input type="number" name="empno" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="empName">Employee Name</label>
                <input type="text" name="empName" class="form-control" required pattern="[A-Za-z ]+">
            </div>
            <div class="form-group">
                <label for="doj">Date of Joining</label>
                <input type="date" name="doj" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Gender</label><br>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" value="Male" required>
                    <label class="form-check-label">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" value="Female">
                    <label class="form-check-label">Female</label>
                </div>
            </div>
            <div class="form-group">
                <label for="bsalary">Basic Salary</label>
                <input type="number" name="bsalary" class="form-control" step="0.01" required min="0">
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Add Employee</button>
                <a href="index.jsp" class="btn btn-secondary">Back</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
