package uta1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Top extends HttpServlet {



    @Override
protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {


req.getRequestDispatcher("./jsp/uta1/top.jsp").forward(req, res);
    }
}