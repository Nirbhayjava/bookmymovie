

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
public class viewshowbyid extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
         ArrayList<String> al = new ArrayList<>();         
          int id = Integer.parseInt(request.getParameter("id"));
        JSONObject jsonobj = new JSONObject();
        JSONArray jsonarray = new JSONArray();
        
         try
         {
            
          
           ResultSet rs = DBLoader.executeQuery("select*from shows where movie="+id);
           while(rs.next())
           {
               JSONObject obj = new JSONObject();
               int multiplex = rs.getInt("multiplex");
               ResultSet rs1 = DBLoader.executeQuery("select * from multiplex where id="+multiplex);
               if(rs1.next())
               {
                   obj.put("name", rs1.getString("name"));
               }
              
               String date = rs.getDate("date").toString();
               String time = rs.getTime("time").toString();
               obj.put("time", time);
               obj.put("id", rs.getInt("id"));
               obj.put("screens", rs.getInt("screens"));
               obj.put("date", date);
               jsonarray.add(obj);
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
