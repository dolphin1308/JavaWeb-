package servlet.spot;

import bean.Spot;
import dao.SpotDao;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@MultipartConfig
@WebServlet("/spot/myInfo")
public class MyInfo extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("1");
        SpotDao spotDao =new SpotDao();
        Spot spot = (Spot) req.getSession().getAttribute("spot");
        String action = Util.nullToString(req.getParameter("action"));
        if("alter".equals(action)){
            String name = req.getParameter("name");
            String age = req.getParameter("age");
            String description = req.getParameter("description");
            spot.setDname(name);
            spot.setAge(age);
            spot.setDescription(description);
            Part part;
            part = req.getPart("pic");
            if(part.getSize()>0&&part.getSize()<1024*1024){
                System.out.println(part.getSubmittedFileName());
                String fileName = part.getSubmittedFileName();
                String jpg=fileName.substring(fileName.lastIndexOf("."));
//                System.out.println(jpg);
                InputStream is=part.getInputStream();
                String realPath = this.getServletContext().getRealPath("images/docpic");
//                System.out.println(realPath);
                FileOutputStream fos = new FileOutputStream(realPath+"/"+ spot.getDid()+jpg);
                byte[] bytes=new byte[1024];
                int i=0;
                while ((i=is.read(bytes))!=-1){
                    fos.write(bytes,0,i);
                }
                fos.close();
                is.close();
                spot.setPicpath("/hospital/images/docpic/"+ spot.getDid()+jpg);
            }
            Object[] o=new Object[]{
                    spot.getDname(),
                    spot.getAge(),
                    spot.getDescription(),
                    spot.getPicpath(),
            spot.getDid()};
            String set="set dname=?,age=?,description=?,picpath=? where did=?";
            spotDao.update(set,o);
        }
        req.getRequestDispatcher("myInfo.jsp").forward(req,resp);
    }
}
