

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

/**
 *
 * @author macbookair
 */
@MultipartConfig
public class user_login extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         PrintWriter out = response.getWriter();
         
         String name = request.getParameter("name");
         String password = request.getParameter("pass");
         System.out.println("name"+name+"``````"+password);
         try
         {
         ResultSet rs = DBLoader.executeQuery("select * from users where email='"+name+"' and password = '"+password+"'");       
    
         if(rs.next())
         {
             HttpSession session = request.getSession();
             session.setAttribute("useremail", rs.getString("email"));
             out.print("success");
         }
         else
         {
             out.print("fail");
         }
         }
         catch(Exception ex)
         {
            ex.printStackTrace();
         }
    }

}
