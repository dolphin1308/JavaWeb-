package servlet;

import bean.Admin;
import bean.Spot;
import bean.Visitor;
import dao.SpotDao;
import dao.VisitorDao;
import dao.impl.IAdminimpl;
import org.w3c.dom.ls.LSOutput;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/modifyPwd")
public class ModifyPwd extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("1");
        String action = Util.nullToString(req.getParameter("action"));
        String jmm = Util.nullToString(req.getParameter("jmm"));
        String xmm = Util.nullToString(req.getParameter("xmm"));
        String qdmm = Util.nullToString(req.getParameter("qdmm"));
        System.out.println(action);
        String message="";
        switch (action){
            case "spot":
                Spot spot = (Spot) req.getSession().getAttribute("spot");
                if(spot.getPassword().equals(jmm)){
                    if(xmm.equals(qdmm)){
                        SpotDao spotDao =new SpotDao();
                        String set ="set password=? where did=?";
                        if(spotDao.update(set,new Object[]{xmm, spot.getDid()})){
                            message="修改成功";
                        }else {
                            message="修改失败";
                        }
                    }else {
                        message="两次密码不一样";
                    }
                }else {
                    message="密码错误";
                }
                req.setAttribute("message",message);
                req.getRequestDispatcher("spot/modifyPwd.jsp").forward(req,resp);
                break;
            case "visitor":
                Visitor visitor = (Visitor) req.getSession().getAttribute("visitor");
                if(visitor.getPassword().equals(jmm)){
                    if(xmm.equals(qdmm)){
                        VisitorDao visitorDao =new VisitorDao();
                        String set ="set password=? where pid=?";
                        if(visitorDao.update(set,new Object[]{xmm, visitor.getId()})){
                            message="修改成功";
                        }else {
                            message="修改失败";
                        }
                    }else {
                        message="两次密码不一样";
                    }
                }else {
                    message="密码错误";
                }
                req.setAttribute("message",message);
                req.getRequestDispatcher("modifyPwd.jsp").forward(req,resp);
                break;
            case "admin":
                Admin admin= (Admin) req.getSession().getAttribute("admin");
                if(admin.getPassword().equals(jmm)){
                    if(xmm.equals(qdmm)){
                        IAdminimpl adminDao=new IAdminimpl() ;
                        String set ="set password=? where account=?";
                        if(adminDao.updateAdmin(set,new Object[]{xmm,admin.getAccount()})){
                            message="修改成功";
                        }else {
                            message="修改失败";
                        }
                    }else {
                        message="两次密码不一样";
                    }
                }else {
                    message="密码错误";
                }
                req.setAttribute("message",message);
                req.getRequestDispatcher("admin/modifyPwd.jsp").forward(req,resp);
                break;
        }
    }
}
