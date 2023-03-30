

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;

@MultipartConfig
public class saveQR extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String data  = request.getParameter("qr");
          int id = Integer.parseInt(request.getParameter("id"));
             try
         {
          ResultSet rs = DBLoader.executeQuery("select * from booking where id="+id);
          if(rs.next())
          {
                rs.moveToCurrentRow();
            rs.updateString("QR", data);
            rs.updateRow();
            out.println("success");
          }
          else
          {
          out.println("fail");
          }
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
