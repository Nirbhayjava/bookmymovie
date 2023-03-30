
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import vmm.DBLoader;

@MultipartConfig
public class viewbooking extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
            
           int id =  Integer.parseInt(request.getParameter("id"));
        JSONObject jsonobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        
         try
         {
            
          
           ResultSet rs = DBLoader.executeQuery("select * from booking where id="+id);
           while(rs.next())
           {
            
             jsonobj.put("id", rs.getInt("id"));
             jsonobj.put("email", rs.getString("email"));
             int show = rs.getInt("show_id");
             ResultSet rs1 = DBLoader.executeQuery("select * from shows where id="+show);
             if(rs1.next())
             {
                 ResultSet rs3 = DBLoader.executeQuery("select * from movies where id="+rs1.getInt("movie"));
                 if(rs3.next())
                 {
                     jsonobj.put("moviename", rs3.getString("moviename"));
                 }
                  ResultSet rs4 = DBLoader.executeQuery("select * from multiplex where id="+rs1.getInt("multiplex"));
                 if(rs4.next())
                 {
                     jsonobj.put("multiplex", rs4.getString("name"));
                 }
             }
               int bookid = rs.getInt("id");
               ResultSet rs2 = DBLoader.executeQuery("select * from booking_details where bookid="+ bookid);
               while(rs2.next())
               {
                     
                  JSONObject obj = new JSONObject();
                   obj.put("seat", rs2.getString("seat"));
                   jsonarray.add(obj);
               }
             
               
           }
              jsonobj.put("ans", jsonarray);
              JSONObject json = jsonobj;
              out.println(json.toJSONString());
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
