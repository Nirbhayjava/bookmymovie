

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vmm.DBLoader;
import vmm.RDBMS_TO_JSON;

@MultipartConfig
public class viewscreen extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          
          HttpSession session = request.getSession();
         try
         {
             int id =  Integer.parseInt(request.getParameter("id1"));
             System.out.println("id---"+id);
          
               String ans = RDBMS_TO_JSON.generateJSON("select * from screens where id="+id);
               out.println(ans);
      
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
