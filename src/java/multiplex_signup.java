

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
public class multiplex_signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String name = request.getParameter("name");
          String address = request.getParameter("address");
          String country = request.getParameter("countries");
          String state = request.getParameter("state");
          String password = request.getParameter("pass");
          String city = request.getParameter("city");
          String phone = request.getParameter("phone");
          String noofscreens = request.getParameter("noofscreens");
          
          Part photo = request.getPart("photo");
          String mypath = request.getServletContext().getRealPath("/myuploads");
          String randomename = System.currentTimeMillis() + "";
          String filename = FileUploader.savefileonserver(photo, mypath, randomename);
         try
         {
          ResultSet rs = DBLoader.executeQuery("select * from multiplex where name='"+name+"'");
          if(rs.next())
          {
              out.print("Multiplex Already Exists");
          }
          else
          {
            rs.moveToInsertRow();
            rs.updateString("name", name);
            rs.updateString("address", address);
            rs.updateString("city", city);
            rs.updateString("state", state);
            rs.updateString("mobile", phone);
            rs.updateString("noofscreens", noofscreens);
            rs.updateString("photo", "/myploads/"+filename);
            rs.updateString("country", country);
             rs.updateString("password", password);
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
