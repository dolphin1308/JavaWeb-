package servlet.spot;

import bean.Apply;
import bean.Spot;
import dao.ApplyDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/spot/applyWork")
public class ApplyWork extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("1");
        String wid = req.getParameter("wid");
        String request = req.getParameter("request");
        String reason = req.getParameter("reason");
        Spot spot = (Spot) req.getSession().getAttribute("spot");
        Apply apply = new Apply("", spot.getDid(), spot.getDname(), wid, reason, "","", request);
        ApplyDao applyDao=new ApplyDao();
        String message="";
        if(applyDao.insert(apply)){
            message="提交申请成功";
        }else {
            message="提交申请失败，请稍后再试";
        }
        req.setAttribute("message",message);
        req.getRequestDispatcher("myApply").forward(req,resp);
    }
}
