package servlet.spot;

import bean.Spot;
import bean.WorkDay;
import dao.WorkDayDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/spot/myWork")
public class MyWork extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("1");
        WorkDayDao workDayDao=new WorkDayDao();
        String action = Util.nullToString(req.getParameter("action"));
        switch (action){
            case "offWork":
                String wid = req.getParameter("wid");
                String set = "set state ='闭馆' where id=?";
                workDayDao.update(set,new Object[]{wid});
                break;
        }
        Spot spot = (Spot) req.getSession().getAttribute("spot");

        String where =" where did=? order by worktime asc";
        List<WorkDay> workDays = workDayDao.query(where,new Object[]{spot.getDid()});
        req.setAttribute("workDays",workDays);
        req.getRequestDispatcher("myWork.jsp").forward(req,resp);
    }
}
