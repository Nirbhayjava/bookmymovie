

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vmm.DBLoader;


@MultipartConfig
public class addshows extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         try
         {
             
             PrintWriter out = response.getWriter();
             int movie = Integer.parseInt(request.getParameter("movies"));
             int screens = Integer.parseInt(request.getParameter("screens"));
             Date date = Date.valueOf(request.getParameter("date"));
             String time =request.getParameter("time");
             SimpleDateFormat format = new SimpleDateFormat("hh:mm a");
             Time timeValue = new Time(format.parse(time).getTime());
             try
             {
                 HttpSession session = request.getSession();
                 int multiplex = (int) session.getAttribute("id");
                 ResultSet rs = DBLoader.executeQuery("select * from shows");
                 
                 rs.moveToInsertRow();
                 rs.updateInt("movie", movie);
                 rs.updateInt("multiplex", multiplex);
                 rs.updateInt("screens", screens);
                 rs.updateDate("date", date);
                 rs.updateTime("time", timeValue);
                 rs.insertRow();
                 out.println("success");
                 
             }
             catch(Exception ex)
             {
                 ex.printStackTrace();
                 
             }
         }
         catch(ParseException ex)
         {
             Logger.getLogger(addshows.class.getName()).log(Level.SEVERE, null, ex);
             
         }
    }

}
