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

<body id="page-top" onload="viewmovie(),allscreens(),viewshows()">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <%@include file="nav.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Add Shows</h1>
                   <a href="#" class="btn btn-warning btn-icon-split" data-toggle="modal" data-target="#logoutModal">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-info-circle"></i>
                                        </span>
     <span class="text" >Add shows</span>

                                    </a>
              
                     <h1 class="h3 text-gray-800 mt-3">View Shows</h1>
                      <div id="loaddata" class="center test table-responsive">Hello World</div>
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
                
                         <form id="form1">
                         <div class="row">
                    <div class="form-group col-sm-6 col-6" id="mov">
                        
                        
                    </div>
                    
                    
                             
                    <div class="form-group col-sm-6 col-6" id="mult">
                     
                    </div>
                    
                   
                             
                         
                                                 </div>
                             
                             <div class="row">
                                 
                                   <div class="form-group col-sm-6 col-6">
                        <label for="date">Date</label>
                        <input type="date" id="date" name="date" class="form-control" placeholder="Enter Description">
                    </div>
                             
                              <div class="form-group col-sm-6 col-6">
                        <label for="date">Time</label>
                        <input type="time" id="time" name="time" class="form-control" placeholder="Enter Description">
                    </div>
                             </div>
                             
                             <div class="row">
                                     <div class="form-group col-sm-12 col-12">
                                 <label for="sub">Submit</label>
                        <input type="button" value="Add" id="sub" class="btn btn-primary form-control" onclick="addmovie()">
                             </div>
                             </div>
                       
                    </form>                    </div>
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
   
      function addmovie()
      {
//          localStorage.setItem("myarray",str);
//          console.log(localStorage.getItem("myarray"));
//          window.location.href = "/BookmyMovie/preview.html";
 var xhttp = new XMLHttpRequest();
            var formdata = new FormData();
             var elements = document.getElementById("form1").elements;
                for(var i=0; i<elements.length; i++)
            {
                if(elements[i].type !== "button")
                {
                    if(elements[i].type === "file")
                    {
                        formdata.append(elements[i].name,elements[i].files[0]);
                    }
                    formdata.append(elements[i].name,elements[i].value);
                }
            }
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
    }
  };
  xhttp.open("POST", "../addshows", true);
  xhttp.send(formdata);
      }

function viewmovie()
{
   var ans="<label for=\"movies\">Choose Movie</label>";
   ans+="<select class='form-control' id='movies' name='movies'>";
     var xhttp = new XMLHttpRequest();
         
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
         var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
             alert(ar.length);
             ans+="<option value='"+obj["id"]+"'>"+obj["moviename"]+"</option>";
         }
          ans+="</select>";
          document.getElementById("mov").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewmovies", true);
  xhttp.send();
}

function allscreens()
{
   var ans="<label for=\"screeens\">Choose screen</label>";
   ans+="<select class='form-control' id='screens' name='screens'>";
     var xhttp = new XMLHttpRequest();
         
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
         var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
             alert(ar.length);
             ans+="<option value='"+obj["id"]+"'>"+obj["screenname"]+"</option>";
         }
          ans+="</select>";
          document.getElementById("mult").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewscreens", true);
  xhttp.send();
}

function viewshows()
{
    var ans="<table class='table'>";
     var xhttp = new XMLHttpRequest();
           ans+="<thead>";
           ans+="<tr>";
           ans+="<td>Movie</td>";
           ans+="<td>Multiplex</td>";
           ans+="<td>Screen</td>";
           ans+="<td>Date</td>";
           ans+="<td>Time</td>";
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
            ans+="<tr>";
            ans+="<td>"+obj["movie"]+"</td>";
            ans+="<td>"+obj["multiplex"]+"</td>";
            ans+="<td>"+obj["screens"]+"</td>";
            ans+="<td>"+obj["date"]+"</td>";
            ans+="<td>"+obj["time"]+"</td>";
            ans+="</tr>";
             
         }
          ans+="</tbody>";
         ans+="</table>";
          document.getElementById("loaddata").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewshows", true);
  xhttp.send();
}

            </script>
</body>

</html>