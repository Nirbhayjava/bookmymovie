<%-- 
    Document   : screens
    Created on : 03-Mar-2023, 4:53:09 pm
    Author     : macbookair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Blank</title>

    <!-- Custom fonts for this template-->
    <link href="/BookmyMovie/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/BookmyMovie/css/sb-admin-2.min.css" rel="stylesheet">
<style>
    .test
    {
       
        overflow-x: visible;
        overflow-y: hidden;
    }
  
 .div1 {
  width: 32px;
  height: 32px;
  margin: 5px;
  background-repeat: no-repeat;
  display: inline-block;
  background-image: url("seat.png");
 
   transition:ease-in-out 300ms;
}
.div1:hover{
    background-color: skyblue!important;
    opacity: 0.1;
}
 .div2 {
   width: 32px;
  height: 32px;
  margin: 5px;
  background-repeat: no-repeat;
  display: inline-block;
  background-image: url("remove.png"); 
   transition:ease-in-out 300ms;
}
.center {
  text-align: center;
   padding: 50px 0;
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
    background-color: orange!important;
}
        </style>
        <%
     if(session.getAttribute("id") == null)
     {
     response.sendRedirect("login.jsp");
     return;
    }
        %>
</head>

<body id="page-top" onload="viewscreen()">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <%@include file="nav.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Screens</h1>
                    
 <a href="#" class="btn btn-warning btn-icon-split" onclick="goo()" data-toggle="modal" data-target="#logoutModal">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
     <span class="text" >Add Screens</span>

                                    </a>
                    
                   
                    <div id="screen" class="center test table-responsive">Hello World</div>
             
       </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="exampleModalLabel">
                        
                        <div id="ans1" class="center">Hello World</div>
                       
                            
                    </div>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body test">
                
                    <div class="test table-responsive">
                    <div id="ans" class="center test table-responsive">Hello World</div>
               
                    </div>
                    </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                     <a href="#" class="btn btn-success btn-icon-split" onclick="Addscreen()">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
     <span class="text" >Add Screen</span>

                                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/BookmyMovie/vendor/jquery/jquery.min.js"></script>
    <script src="/BookmyMovie/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/BookmyMovie/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/BookmyMovie/js/sb-admin-2.min.js"></script>
     <script>
    var h = 0;
    var seats;        
    var gfg;
            var noofseats = 4;
 var seats = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P']; 
function viewscreen()
{
    var ans="<table class='table'>";
     var xhttp = new XMLHttpRequest();
           ans+="<thead>";
           ans+="<tr>";
           ans+="<td>Screen Name</td>";
           ans+="<td>Layout Preview</td>";
           ans+="</tr>";
           ans+="</thead>";
            ans+="<tbody>";
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
         var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
             alert(ar.length);
             alert(obj["layout"]);
             console.log(obj["layout"]);
                     localStorage.setItem("myarray"+i,obj["layout"]);
//          console.log(localStorage.getItem("myarray"));
            ans+="<tr>";
            ans+="<td>"+obj["screenname"]+"</td>";
           ans+="<td><button class='btn btn-primary' data-toggle=\"modal\" data-target=\"#logoutModal\" onclick=\"preview("+i+")\">Layout Preview</button></td>";
            ans+="</tr>";
             
         }
          ans+="</tbody>";
         ans+="</table>";
          document.getElementById("screen").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewscreens", true);
  xhttp.send();
}

function goo()
{
    var ans="";
    ans+="<div class='row'>";
    ans+="<div class='form-group col-12 col-sm-4'>";
    ans+="<label for='rows'>Total rows</label>";
    ans+="<input type='number' class='form-control' onchange='go()' value='5' id='rowss'>";
    ans+="</div>";
    ans+="<div class='form-group col-12 col-sm-4'>";
    ans+="<label for='cols'>Total columns</label>";
    ans+="<input type='number' class='form-control' onchange='go()' value='10' id='colss'>";
    ans+="</div>";
     ans+="<div class='form-group col-12 col-sm-4'>";
    ans+="<label for='cols'>Screen Name</label>";
    ans+="<input type='text' class='form-control' placeholder='Enter Screen Name' id='screenname'>";
    ans+="</div>";
    ans+="</div>";
    document.getElementById("ans1").innerHTML = ans;
    go();
}

            function go()
            {
                row = parseInt(document.getElementById("rowss").value);
                col = parseInt(document.getElementById("colss").value);
             seats = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P'];      
        var ans="";
                 // Create one dimensional array
        gfg = new Array(row);
//    document.write("Creating 2D array <br>");
      
    // Loop to create 2D array using 1D array
    for (var i = 0; i < gfg.length; i++) {
        gfg[i] = new Array(col);
    }
      
    
    // Loop to initialize 2D array elements.
    for (var i = 0; i < gfg.length; i++) {
        for (var j = 0; j < gfg[i].length; j++) {
            gfg[i][j] = seats[i]+h++;
           
        }
        h =0;
    }
        
    // Loop to display the elements of 2D array. 
    for (var i = 0; i <gfg.length; i++) {
//       ans = ans+`<span></span>`;
        for (var j = 0; j < gfg[i].length; j++)    {
            var seat = gfg[i][j];
//            document.write(gfg[i][j] + " ");
ans = ans+"<div class='div1'  id="+seat+" onclick=\"go1('"+seat+"')\"></div>";

                }
//        document.write("<br>");
ans = ans+"<br>";
    } 
    document.getElementById("ans").innerHTML = ans;
            }
      function go1(ss)
      {
          var ans="";
          if(document.getElementById(ss).className === 'div1 active')
          {
              document.getElementById(ss).className = "div1";
          }
          else
          {
          document.getElementById(ss).className = "div1 active";
      }
          
    for (var i = 0; i < gfg.length; i++) {
        for (var j = 0; j < gfg[i].length; j++) {
        if(ss === seats[i]+'0'+j)
        {
             gfg[i][j] = seats[i]+j;
        }
               else if(gfg[i][j]===ss)
            {
            gfg[i][j] = seats[i]+'0'+j;
        }
       
        }
    }

    // Loop to display the elements of 2D array. 
    for (var i = 0; i <gfg.length; i++) {
//     
        for (var j = 0; j < gfg[i].length; j++)    {
            
//            document.write(gfg[i][j] + " ");
if(gfg[i][j]=== seats[i]+'0'+j)
{
    
   ans = ans+"<div class='div2'  id="+gfg[i][j]+" onclick=\"go1('"+gfg[i][j]+"')\"></div>";
}
else
{
ans = ans+"<div class='div1'  id="+gfg[i][j]+" onclick=\"go1('"+gfg[i][j]+"')\"></div>";
}
                }
//        document.write("<br>");
ans = ans+"<br>";
    } 
    document.getElementById("ans").innerHTML = ans;
}
          
      function Addscreen()
      {
          var str = JSON.stringify(gfg);
          alert(str);
//          localStorage.setItem("myarray",str);
//          console.log(localStorage.getItem("myarray"));
//          window.location.href = "/BookmyMovie/preview.html";
 var xhttp = new XMLHttpRequest();
            var formdata = new FormData();
            formdata.append("screenname",document.getElementById("screenname").value);
            formdata.append("seats",str);
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
    }
  };
  xhttp.open("POST", "../addscreens", true);
  xhttp.send(formdata);
      }
      function preview(i)
      {
          alert(i);
          var ans="";
                                var gfg =  JSON.parse(localStorage.getItem("myarray"+i));
             for (var j = 0; j <gfg.length; j++) {
//       ans = ans+`<span>${seats[j]}</span>`;
        for (var k = 0; k < gfg[j].length; k++)    {
            
//            document.write(gfg[i][j] + " ");
if(gfg[j][k]=== seats[j]+'0'+k)
{
    
   ans = ans+`<div class='div2' id='${gfg[j][k]}' onclick="go1('${gfg[j][k]}')"></div>`;
}
else
{
ans = ans+`<div class='div1' id='${gfg[j][k]}' onclick="go1('${gfg[j][k]}')"></div>`;
}
                }
//        document.write("<br>");
ans = ans+"<br>";
    } 
    document.getElementById("ans").innerHTML = ans;
      }
            </script>
</body>

</html>