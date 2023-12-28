package servlet;

import bean.Admin;
import bean.Spot;
import bean.Visitor;
import dao.AdminDao;
import dao.SpotDao;
import dao.VisitorDao;
import dao.impl.IAdminimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String VisitIP=req.getRemoteAddr();
        System.out.println("Visit-Time:"+LocalDateTime.now() +"IP:"+VisitIP);
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        String accounttype = req.getParameter("accounttype");
        req.getSession().removeAttribute("message");
        switch (accounttype){
            case "管理员":
                AdminDao adminDao=new IAdminimpl();
                List<Admin> admins = adminDao.getAdmin(account);
                if(admins.size()>0){
                    Admin admin = admins.get(0);
                    if(admin.getPassword().equals(password)){
                        req.getSession().setAttribute("admin",admin);
                        resp.sendRedirect("admin/index.jsp");
                    }
                }
                break;
            case "景区":
                SpotDao spotDao =new SpotDao();
                String where="where account =?";
                List<Spot> spots = spotDao.query(where, new Object[]{account});
                if(spots.size()>0){
                    Spot spot = spots.get(0);
                    if(spot.getPassword().equals(password)){
                        req.getSession().setAttribute("spot", spot);
                        resp.sendRedirect("spot");
                        return;
                    }
                }
                req.getSession().setAttribute("message","用户名或密码错误！！");
                req.getRequestDispatcher("spot/login.jsp").forward(req,resp);
                break;
            case "游客":
                VisitorDao visitorDao =new VisitorDao();
                List<Visitor> visitors = visitorDao.query("account",account);
                if(visitors.size()>0){
                    Visitor visitor = visitors.get(0);
                    if(visitor.getPassword().equals(password)){
                        req.getSession().setAttribute("visitor", visitor);
                        String url= (String) req.getSession().getAttribute("url");
                        if(url==null)
                            url="index.jsp";
                        resp.sendRedirect(url);
                        return;
                    }
                }
                req.getSession().setAttribute("message","用户名或密码错误！！");
                resp.sendRedirect("login.jsp");
                break;
        }
    }
}
