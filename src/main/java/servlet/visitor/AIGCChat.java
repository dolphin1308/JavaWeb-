package servlet.visitor;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AIGC;

import java.io.IOException;

@WebServlet("/AIGCChat")
public class AIGCChat extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        String question = req.getParameter("question");
        String answer = AIGC.query(question);
        resp.setContentType("text/plain;charset=UTF-8");
        resp.getWriter().write(answer);
    }
}
