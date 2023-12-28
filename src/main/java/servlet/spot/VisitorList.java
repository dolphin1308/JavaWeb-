package servlet.spot;

import bean.Spot;
import bean.Integrity;
import dao.IntegrityDao;
import dao.VisitorDao;
import dao.RecodeDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet("/spot/visitorList")
public class VisitorList extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("1");
        String action = Util.nullToString(req.getParameter("action"));
        Spot spot = (Spot) req.getSession().getAttribute("spot");
        String rid = Util.nullToString(req.getParameter("rid"));
        String pid = Util.nullToString(req.getParameter("pid"));
        RecodeDao recodeDao = new RecodeDao();
        IntegrityDao integrityDao = new IntegrityDao();
        Integrity integrity;
        String set;
        switch (action){
            case "finish":
                set = "set state ='完成' where rid=?";
                recodeDao.update(set,new Object[]{rid});
                integrity = new Integrity("", pid, spot.getDname(), spot.getOffice(), "", "完成预约", "10");
                integrityDao.insert(integrity);
                break;
            case "sy":
                set = "set state ='爽约' where rid=?";
                recodeDao.update(set,new Object[]{rid});
                integrity = new Integrity("", pid, spot.getDname(), spot.getOffice(), "", "爽约", "-10");
                integrityDao.insert(integrity);
                break;
        }
        VisitorDao visitorDao = new VisitorDao();

        ArrayList<HashMap<String, String>> list = visitorDao.patientList(spot.getDid());
        req.setAttribute("list",list);
        req.getRequestDispatcher("visitorList.jsp").forward(req,resp);
    }
}
