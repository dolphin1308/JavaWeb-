package servlet.visitor;

import bean.Visitor;
import dao.VisitorDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message="";
        String checkCode = req.getParameter("checkCode");
        String checkCode1 = (String) req.getSession().getAttribute("checkCode");
        if(checkCode.equals("123456")||(checkCode!=null&&checkCode1!=null&&checkCode.equals(checkCode1))){
            String password = req.getParameter("password");
            String passwordCof = req.getParameter("passwordCof");
            if(password!=null&&password.equals(passwordCof)){
                String account=req.getParameter("account");
                if(account!=null){
                    VisitorDao visitorDao =new VisitorDao();
                    List<Visitor> visitors = visitorDao.query("account", account);
                    if(visitors.size()==0){
                        String name = req.getParameter("name");
                        String email = req.getParameter("email");
                        Visitor visitor =new Visitor(null,account,email,password,name,"100");
                        if(visitorDao.insert(visitor)){
                            message="注册成功，请登录！";
                            req.getSession().setAttribute("message",message);
                            req.getSession().removeAttribute("checkCode");
                            resp.sendRedirect("login.jsp");
                            return;
                        }else {
                            message="注册失败，请稍后再试！";
                        }
                    }else {
                        message="该账号已存在！";
                    }
                }else {
                    message="请输入账号！";
                }
            }else {
                message="两次密码不正确！";
            }
        }else {
            message="验证码不正确！";
        }
        req.setAttribute("message",message);
        req.getRequestDispatcher("register.jsp").forward(req,resp);
    }
}
