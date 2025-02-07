
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            double num1 = Double.parseDouble(request.getParameter("num1"));
            double num2 = Double.parseDouble(request.getParameter("num2"));
            String operation = request.getParameter("operation");
            double result = 0;

            switch (operation) {
                case "add": result = num1 + num2; break;
                case "sub": result = num1 - num2; break;
                case "mul": result = num1 * num2; break;
                case "div": 
                    if (num2 != 0) result = num1 / num2;
                    else {
                        response.sendRedirect("index.jsp?result=Cannot divide by zero");
                        return;
                    }
                    break;
                default:
                    response.sendRedirect("index.jsp?result=Invalid Operation");
                    return;
            }
            
            response.sendRedirect("index.jsp?result=" + result);
        } catch (Exception e) {
            response.sendRedirect("index.jsp?result=Invalid Input");
        }
    }
}
