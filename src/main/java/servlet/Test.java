package servlet;

import com.sun.net.httpserver.HttpServer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author： hua
 * @date： 2020/9/30 17:31
 * @description:
 * @version: 1.0
 **/

public class Test extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double f1 = Double.parseDouble(req.getParameter("f1"));
        double f2 = Double.parseDouble(req.getParameter("f2"));
        if(f1>f2){
            //F1>F2
//            System.out.println("当F1>F2时");
//            System.out.println("输出结果是:"+(f1-f2)+"×λ1/(E1×A1)");
            req.setAttribute("success",f1-f2);
            req.getRequestDispatcher("WEB-INF/success.jsp").forward(req,resp);
//            resp.sendRedirect("WEB-INF/success.jsp");
//            resp.setHeader("Location", "WEB-INF/fail.jsp");
        }else{
            //F1<=F2
//            System.out.println("当F2>F1时");
//            System.out.println("输出结果是:"+(f2-f1)+"×λ1/(E1×A1)");
            req.setAttribute("fail",f2-f1);
            req.getRequestDispatcher("WEB-INF/fail.jsp").forward(req,resp);
//            resp.sendRedirect("WEB-INF/fail.jsp");
//            resp.setHeader("Location", "WEB-INF/success.jsp");
        }
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
