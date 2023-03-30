

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.RDBMS_TO_JSON;

@MultipartConfig
public class viewmultiplex extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          
        
         try
         {
            
          
               String ans = RDBMS_TO_JSON.generateJSON("select * from multiplex");
               out.println(ans);
      
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
