package servlet.visitor;

import bean.Spot;
import bean.WorkDay;
import dao.SpotDao;
import dao.WorkDayDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/showWeek")
public class ShowWorkday extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String spotid = req.getParameter("did");
        if (spotid==null){
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else {
            SpotDao spotDao = new SpotDao();
            List<Spot> spots = spotDao.query("where did=? ", new Object[]{spotid});
            if(spots.size()>0){
                WorkDayDao workDayDao=new WorkDayDao();
                String where =" where did=?";
                List<WorkDay> workDays= workDayDao.query(where,new Object[]{spotid});
                req.setAttribute("workDays",workDays);
                req.setAttribute("spot", spots.get(0));
                req.getRequestDispatcher("spotInfo.jsp").forward(req,resp);
            }else {
                resp.getWriter().write("没有这个景区");
            }
        }
    }
}
