package servlet.admin;

import util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet("/admin/visitorManage")
public class VisitorManage extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql ="select * from visitor";
        ArrayList<HashMap<String, String>> hashmap = DBUtil.getHashmap(sql, null);
        req.setAttribute("hashmap",hashmap);
        req.getRequestDispatcher("visitorManage.jsp").forward(req,resp);
    }
}
