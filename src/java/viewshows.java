

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
public class viewshows extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          
          HttpSession session = request.getSession();
         try
         {
             int multiplexid =  (int) session.getAttribute("id");
          
               String ans = RDBMS_TO_JSON.generateJSON("select * from shows where multiplex ="+multiplexid);
               out.println(ans);
      
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
