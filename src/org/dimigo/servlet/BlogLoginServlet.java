package org.dimigo.servlet;

import org.dimigo.vo.UserVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "BlogLoginServlet", urlPatterns = {"/bloglogin"})
public class BlogLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        boolean result = "test@naver.com".equals(id);
        HttpSession session = request.getSession();
        UserVO user = new UserVO();

        if (result) {
            user.setId(id);
            user.setName("test");
            user.setNickname("TEST");

            session.setAttribute("user", user);

            RequestDispatcher rd = request.getRequestDispatcher("/jsp/blog/index.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("msg", "error");

            user.setId(id);
            user.setName("");
            user.setNickname("");

            session.setAttribute("user", user);

            RequestDispatcher rd = request.getRequestDispatcher("/jsp/blog/signin.jsp");
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/blog/signin.jsp");
        rd.forward(request, response);
    }
}
