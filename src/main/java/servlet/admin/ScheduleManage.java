package servlet.admin;

import bean.Spot;
import bean.WorkDay;
import dao.SpotDao;
import dao.WorkDayDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/scheduleManage")
public class ScheduleManage extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = Util.nullToString(req.getParameter("action"));
        String did = Util.nullToString(req.getParameter("did"));
        SpotDao spotDao = new SpotDao();
        List<Spot> spots = spotDao.query(" where did=?", new Object[]{did});
        if (spots.size() > 0) {
            req.setAttribute("doctor", spots.get(0));
        }
        WorkDayDao workDayDao = new WorkDayDao();
        String where = "";

        if ("alter".equals(action)) {
            String wid = req.getParameter("wid");
            String state = req.getParameter("state");
            String nsnum = req.getParameter("nsnum");

            where = " set state=? , nsnum=? where wid=? ";
            workDayDao.update(where, new Object[]{state, nsnum, wid});

        }
        where =" where did=? order by worktime asc";
        List<WorkDay> workDays = workDayDao.query(where,new Object[]{did});
        req.setAttribute("workDays", workDays);
        req.getRequestDispatcher("scheduleManage.jsp").forward(req, resp);
    }
}
