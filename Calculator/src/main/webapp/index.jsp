<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f4f4f4; }
        .calculator-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="calculator-container">
        <h2 class="text-center">Simple Calculator</h2>
        <form action="calculate" method="post">
            <div class="mb-3">
                <label class="form-label">Enter Number 1:</label>
                <input type="number" class="form-control" name="num1" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Enter Number 2:</label>
                <input type="number" class="form-control" name="num2" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Select Operation:</label>
                <select class="form-select" name="operation">
                    <option value="add">Addition (+)</option>
                    <option value="sub">Subtraction (-)</option>
                    <option value="mul">Multiplication (×)</option>
                    <option value="div">Division (÷)</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary w-100">Calculate</button>
        </form>

        <%-- Display result if present --%>
        <% 
            String result = request.getParameter("result");
            if (result != null) { 
        %>
            <div class="alert alert-info mt-3 text-center">
                <strong>Result:</strong> <%= result %>
            </div>
        <% } %>
    </div>
</body>
</html>
