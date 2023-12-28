package servlet.visitor;

import bean.Spot;
import bean.Office;
import bean.Pages;
import dao.SpotDao;
import dao.OfficeDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/searchSpot")
public class SpotSearch extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String office = Util.nullToString(req.getParameter("office"));
        String name = Util.nullToString(req.getParameter("spot"));
        int start = Util.nullToZero(req.getParameter("start"));
        SpotDao spotDao =new SpotDao();
        String where="where office like ? and dname like ? ";
        int total= spotDao.getSpotCount(where,new Object[]{Util.toLike(office),Util.toLike(name)});
        Pages pages = new Pages(start , total, 6);
        where+=" limit "+((pages.getCurrentPage()-1)*6)+",6";
        List<Spot> spots = spotDao.query(where, new Object[]{Util.toLike(office),Util.toLike(name)});
        req.setAttribute("spots", spots);
        req.setAttribute("pages",pages);
        req.setAttribute("spot",name);
        OfficeDao officeDao=new OfficeDao();
        List<Office> offices = officeDao.query("officename", office, "");
        req.setAttribute("office",offices.get(0));
        String order = req.getParameter("order");
        if("spot".equals(order)){
            req.getRequestDispatcher("/orderSpot.jsp").forward(req,resp);
        }else
        req.getRequestDispatcher("/officeInfo.jsp").forward(req,resp);
    }
}
