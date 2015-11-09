package server;

import logic.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Yevhen on 09.11.2015.
 */
@WebServlet(name = "TabulationServlet", urlPatterns = {"/tabulation"})
public class TabulationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double start = Double.parseDouble(request.getParameter("start"));
        double finish = Double.parseDouble(request.getParameter("finish"));
        double step = Double.parseDouble(request.getParameter("step"));
        Calculator calculator = new Calculator(start, finish, step);
        request.setAttribute("calc", calculator);
        request.getRequestDispatcher("/show1.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
