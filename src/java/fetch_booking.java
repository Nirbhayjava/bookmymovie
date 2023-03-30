

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
public class fetch_booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
            
          int id = Integer.parseInt(request.getParameter("id"));
           int show = Integer.parseInt(request.getParameter("show"));
        JSONObject jsonobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        
         try
         {
            
          
           ResultSet rs = DBLoader.executeQuery("select * from booking where screen='"+id+"'and show_id="+show);
           while(rs.next())
           {
             
               int bookid = rs.getInt("id");
               ResultSet rs1 = DBLoader.executeQuery("select * from booking_details where bookid="+ bookid);
               while(rs1.next())
               {
                     JSONObject obj = new JSONObject();
                   obj.put("seat", rs1.getString("seat"));
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
