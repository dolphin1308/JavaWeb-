package servlet.visitor;

import bean.Visitor;
import dao.RecodeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet("/orderList")
public class OrderList extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Visitor visitor = (Visitor) req.getSession().getAttribute("visitor");
        RecodeDao recodeDao = new RecodeDao();
        List<HashMap<String, String>> list = recodeDao.orderList(visitor.getId());
        req.setAttribute("list",list);
        req.getRequestDispatcher("orderList.jsp").forward(req,resp);
    }
}
