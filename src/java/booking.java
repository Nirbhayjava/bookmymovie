

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vmm.DBLoader;

@MultipartConfig
public class booking extends HttpServlet {
int max=0;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          
          int id = Integer.parseInt(request.getParameter("show_id"));
           int id1 = Integer.parseInt(request.getParameter("id"));
          int total = Integer.parseInt(request.getParameter("total"));
          String totalseats =  request.getParameter("totalseats");
          System.out.println("seats"+totalseats);
          HttpSession session = request.getSession();
          String email = (String) session.getAttribute("useremail");
          StringTokenizer st = new StringTokenizer(totalseats,",");
         java.sql.Date date = new java.sql.Date(new java.util.Date().getTime());
         try
         {
          ResultSet rs = DBLoader.executeQuery("select * from booking");
        
            rs.moveToInsertRow();
            rs.updateString("email", email);
            rs.updateInt("show_id", id);
            rs.updateInt("total_amount", total);
            rs.updateDate("date", date);
            rs.updateInt("screen", id1);
            rs.updateString("QR", "null");
            rs.insertRow();
            
            
            ResultSet rs1 = DBLoader.executeQuery("select max(id) as id from booking");
            if(rs1.next())
            {
                max = rs1.getInt("id");
                System.out.println("max id is"+max);
            }
            
        ResultSet rs2 = DBLoader.executeQuery("select * from booking_details");
         
         while(st.hasMoreTokens())
          {
               rs2.moveToInsertRow();
            rs2.updateInt("bookid", max);
            rs2.updateString("seat", st.nextToken());
            
            rs2.insertRow();
          }
           
          out.println("success;"+max);
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
