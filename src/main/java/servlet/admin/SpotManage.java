package servlet.admin;

import bean.Spot;
import bean.Pages;
import dao.SpotDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/spotManage")
public class SpotManage extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String office = Util.nullToString(req.getParameter("office"));
        String name = Util.nullToString(req.getParameter("spot"));
        String action = Util.nullToString(req.getParameter("action"));
        if("add".equals(action)){
            String message="增加景区失败！";
            SpotDao spotDao = new SpotDao();
            System.out.println(req.getParameter("account"));
            List<Spot> spots = spotDao.query("where account=? ",new Object[]{Util.nullToString(req.getParameter("account"))});
            if(spots.size()==0){
                Spot spot =new Spot();
                spot.setAccount(req.getParameter("account"));
                spot.setPassword(req.getParameter("password"));
                spot.setDname(req.getParameter("name"));
                spot.setFee(req.getParameter("fee"));
                spot.setAge(req.getParameter("age"));
                spot.setOffice(req.getParameter("office1"));
                spot.setRoom(req.getParameter("room"));
                spot.setCareer(req.getParameter("career"));
                spot.setDescription(req.getParameter("description"));
                spot.setPicpath(req.getContextPath()+"/images/docpic/default.jpg");
                if(spotDao.insert(spot)){
                    message="添加"+req.getParameter("name")+"景区成功!";
                }
            }else {
                message=req.getParameter("account")+"账号已存在！";
            }
            req.setAttribute("message",message);
        }
        int start = Util.nullToZero(req.getParameter("start"));
        SpotDao spotDao =new SpotDao();
        String where="where office like ? and dname like ? ";
        int total= spotDao.getSpotCount(where,new Object[]{Util.toLike(office),Util.toLike(name)});
        Pages pages = new Pages(start , total, 6);
        where+="limit "+((pages.getCurrentPage()-1)*6)+",6";
        List<Spot> spots = spotDao.query(where, new Object[]{Util.toLike(office),Util.toLike(name)});
        req.setAttribute("spots", spots);
        req.setAttribute("pages",pages);
        req.setAttribute("spot",name);
        //OfficeDao officeDao=new OfficeDao();
        //List<Office> offices = officeDao.query("officename", office, "");
        req.setAttribute("office",office);
        req.getRequestDispatcher("spotManage.jsp").forward(req,resp);
    }
}
