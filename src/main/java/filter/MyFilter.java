package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebFilter("/*")
public class MyFilter implements Filter {
    private ArrayList<String> visitor;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        visitor=new ArrayList<>();
        visitor.add("/integrity");
        visitor.add("/order");
        visitor.add("/orderList");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=utf-8");
        String uri = req.getRequestURI().substring(req.getContextPath().length());//请求的页面
        String url=req.getHeader("referer");//之前的页面
        if(req.getSession().getAttribute("visitor")==null&&visitor.contains(uri)){
            req.getSession().setAttribute("message","请先登录!");
            req.getSession().setAttribute("url",url);
            HttpServletResponse resp= (HttpServletResponse) servletResponse;
            resp.sendRedirect("login.jsp");
        }else {
            filterChain.doFilter(servletRequest, servletResponse);
        }

    }

    @Override
    public void destroy() {

    }
}
