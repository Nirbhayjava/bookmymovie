

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
public class addmovie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String name = request.getParameter("name");
          String desc = request.getParameter("desc");
          Part photo = request.getPart("photo");
          String mypath = request.getServletContext().getRealPath("/myuploads");
          String randomename = System.currentTimeMillis() + "";
          String filename = FileUploader.savefileonserver(photo, mypath, randomename);
         try
         {
          ResultSet rs = DBLoader.executeQuery("select * from movies where moviename='"+name+"'");
          if(rs.next())
          {
              out.print("Multiplex Already Exists");
          }
          else
          {
            rs.moveToInsertRow();
            rs.updateString("moviename", name);
            rs.updateString("description", desc);
            rs.updateString("photo", "/myploads/"+filename);
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
