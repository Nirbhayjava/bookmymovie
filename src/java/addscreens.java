

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

@MultipartConfig
public class addscreens extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String name = request.getParameter("screenname");
          String layout = request.getParameter("seats");
          HttpSession session = request.getSession();
         try
         {
             int multiplexid =  (int) session.getAttribute("id");
           ResultSet rs = DBLoader.executeQuery("select * from screens where screenname='"+name+"'");
          if(rs.next())
          {
              out.print("Screen Already Exists");
          }
          else
          {
            rs.moveToInsertRow();
            rs.updateString("screenname", name);
            rs.updateString("layout", layout);
            rs.updateInt("multiplexid", multiplexid);
            
            rs.insertRow();
            out.println("success");
          }
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
