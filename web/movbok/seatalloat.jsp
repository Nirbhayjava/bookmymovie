

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat alloatment</title>
        <%
            
          if(session.getAttribute("useremail") == null)
     {
     response.sendRedirect("userlogin.jsp");
     return;
    }

         int id =  Integer.parseInt(request.getParameter("id"));
         int show_id = Integer.parseInt(request.getParameter("show_id"));
        %>
        <script>
//            alert(<%=id%>);
        </script>
        <style>
    .test
    {
       
        overflow-x: visible;
        overflow-y: hidden;
    }
  
 .div1 {
  width: 32px;
  height: 32px;
  margin-right: 5px;
  margin-left: 5px;
  background-repeat: no-repeat;
  display: inline-block;
  background-image: url("seat.png");
 
   transition:ease-in-out 300ms;
}
 .div3 {
  width: 32px;
  height: 32px;
  margin-right: 5px;
  margin-left: 5px;
  background-repeat: no-repeat;
  display: inline-block;
  background-image: url("selected.png");
  pointer-events: none;
    opacity: 0.4;
 
   transition:ease-in-out 300ms;
}
.div1:hover{
/*    background-color: skyblue!important;
    opacity: 0.1;*/
 transform: scale(1.5);
}
 .div2 {
   width: 32px;
  height: 32px;
  margin: 5px;
  background-repeat: no-repeat;
  display: inline-block;
   transition:ease-in-out 300ms;
}
.center {
  text-align: center;
  
}

.center1 {
  text-align: center;
}

body
{
    background-color: #fafafa;
    overflow-x: visible;
}
.active
{
   background-image: url("occupied.png");
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: orange;
   color: white;
   text-align: center;
}
.header {
  padding: 2px 2px;
  background: papayawhip;
  color: black;
}


.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

        </style>
    </head>
    <body onload="fetchbooking()">
        <div class="header " id="myHeader">
            <div><span><img src="seat.png"> Available seats</span>&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="occupied.png"> Selected seats</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style='opacity: 0.4;'><img src="selected.png"> Occupied seats</span><span style="float: center"><button onclick="add()" class="btn btn-warning">Book Now </button></span><span style="float: right"><img src="ruppe.png">Total:<span id="total"></span></span></div>
            
</div>
        <div style="margin-top: 20px">
        <div id="ans" class="center">Hello World</div>
       
        <h1 style="text-align: center"><img src="../photos/backmovie.PNG"></h1>
        <h3 style="text-align: center">All Eyes are here!</h3>
        
<!--        <div class="footer">
            <p> <button onclick="add()" class="btn btn-warning">Book Now </button> </p>
            <p id="total"></p>
</div>-->
        </div>
        <script>
            var arrr = null;
            var totalseats="";
            var sum=0;
              var h = 0;
    var seats;        
    var gfg;
            var noofseats = 4;
 var seats = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P']; 
 
 function fetchbooking()
 {
      var xhttp = new XMLHttpRequest();
          
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
        alert(this.response);
         var res = this.response;
         if(res !== "")
         {
         var mainobj = JSON.parse(res);
         
        arrr  = mainobj["ans"];
         console.log(arrr);
      viewscreen();
            }
        else
        {
             viewscreen();
        }
    }
  };
  xhttp.open("POST", "../fetch_booking?id=<%=id%>&show=<%=show_id%>", true);
  xhttp.send();
 }
function viewscreen()
{
  var ans="";
     var xhttp = new XMLHttpRequest();
        
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
//         alert(this.response);
         var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
        
             var gfg = JSON.parse(obj["layout"]);
                         for (var j = 0; j <gfg.length; j++) {
                             if(j==0)
                             {
                             
                                  ans = ans+`<h4>Golden Seats(Price Per Seat: 300)</h4>`;
                             }
                             else if(j==2)
                             {
                                  ans = ans+`<h4>Silver Seats(Price Per Seat: 200)</h4>`;
                             }
                             else if(j==4) 
                             {
                                  ans = ans+`<h4>Bronze Seats(Price Per Seat: 100)</h4>`;
                             }
//       ans = ans+`<span>${seats[j]}</span>`;
        for (var k = 0; k < gfg[j].length; k++)    {
            
//            document.write(gfg[i][j] + " ");
if(gfg[j][k]=== seats[j]+'0'+k)
{

   ans = ans+"<div class='div2' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"')\"></div>";
   
}
else
{
     pos = -1;
       if(j>=0 && j<2)
   {
     if(arrr !== null)
     {
       for(var f =0; f<arrr.length; f++)
       {
          
           if(arrr[f]["seat"] === gfg[j][k])
           {
         ans = ans+"<div class='div3' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',300)\"></div>";
             pos = j;
     }
       }
       if(pos != j)
       {
           ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',300)\"></div>";
       }
       }
       else
       {
            ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',300)\"></div>";
       }
   }
   else if(j>=2 && j<4)
   {
         if(arrr !== null)
     {
       for(var f =0; f<arrr.length; f++)
       {
          
           if(arrr[f]["seat"] === gfg[j][k])
           {
         ans = ans+"<div class='div3' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',200)\"></div>";
             pos = j;
     }
       }
       if(pos != j)
       {
           ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',200)\"></div>";
       }
       }
       else
       {
            ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',200)\"></div>";
       }  
   }
   else
   {
        if(arrr !== null)
     {
       for(var f =0; f<arrr.length; f++)
       {
          
           if(arrr[f]["seat"] === gfg[j][k])
           {
         ans = ans+"<div class='div3' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',100)\"></div>";
             pos = j;
     }
       }
       if(pos != j)
       {
           ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',100)\"></div>";
       }
       }
       else
       {
            ans = ans+"<div class='div1' id="+gfg[j][k]+" onclick=\"go1('"+gfg[j][k]+"',100)\"></div>";
       }
   }
}
                }
//        document.write("<br>");
ans = ans+"<br>";
    } 
         }
       
          document.getElementById("ans").innerHTML = ans;
    }
  };
  xhttp.open("GET", "../viewscreen?id1=<%=id%>", true);
  xhttp.send();
//}
//function total(total)
//{
//    
//    var tot = parseInt(total);
//    sum = sum+tot;
//    document.getElementById("total").innerHTML = sum;
}
       function go1(ss,total)
      {
          var tot = parseInt(total);     
          var ans="";
          if(document.getElementById(ss).className === 'div1 active')
          {
              sum = sum-tot;
              document.getElementById("total").innerHTML = sum;
              document.getElementById(ss).className = "div1";
          }
          else
          {
              sum = sum+tot;
              document.getElementById("total").innerHTML = sum;
          document.getElementById(ss).className = "div1 active";
      }
}   

function add()
{
    totalseats = "";
    var element = document.querySelectorAll(".active");
    alert(element.length);
    for (var i = 0; i < element.length; i++) 
    {
         totalseats = totalseats+element[i].id+",";
     }
     alert(totalseats);
     
                 var xhttp = new XMLHttpRequest();
            var formdata = new FormData();
            formdata.append("id",<%=id%>);
              formdata.append("show_id",<%=show_id%>);
              formdata.append("total",sum);
              formdata.append("totalseats",totalseats);
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
         alert(this.response);
         var res= this.response.trim().split(";");
         if(res[0] === "success")
         {
            
             window.location.href = "success.jsp?id="+res[1];
         }
    }
  };
  xhttp.open("POST", "../booking", true);
  xhttp.send(formdata);
        }     
            </script>
    </body>
</html>
