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
//     if(session.getAttribute("id") == null)
//     {
//     response.sendRedirect("login.jsp");
//     return;
//    }
        %>
</head>

<body id="page-top" onload="viewmovie()">

    <!-- Page Wrapper -->
    <div id="wrapper">
        <%@include file="nav.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Add Movies</h1>
                   
                    <form id="form1">
                         <div class="row">
                    <div class="form-group col-sm-3 col-3">
                        <label for="name">Movie Name</label>
                        <input type="text" id="name" class="form-control" name="name" placeholder="Enter movie name">
                    </div>
                    
                    
                    <div class="form-group col-sm-3 col-3">
                        <label for="name">Description</label>
                        <input type="text" id="desc" class="form-control" name="desc" placeholder="Enter Description">
                    </div>
                    
                     <div class="form-group col-sm-3 col-3">
                        <label for="name">Photo</label>
                        <input type="file" id="desc" name="desc" class="form-control" placeholder="Enter Description">
                    </div>
                             
                             <div class="form-group col-sm-3 col-3">
                                 <label for="sub">Submit</label>
                        <input type="button" value="Add" id="sub" class="btn btn-primary form-control" onclick="addmovie()">
                             </div>
                                                 </div>
                       
                    </form>
                     <h1 class="h3 text-gray-800 mt-3">View Movies</h1>
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
  xhttp.open("POST", "../addmovie", true);
  xhttp.send(formdata);
      }

function viewmovie()
{
    var ans="<table class='table'>";
     var xhttp = new XMLHttpRequest();
           ans+="<thead>";
           ans+="<tr>";
            ans+="<td>Photo</td>";
           ans+="<td>Movie Name</td>";
           ans+="<td>Description</td>";
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
//          console.log(localStorage.getItem("myarray"));
            ans+="<tr>";
             ans+="<td><img src='"+obj["photo"]+"' width='50px'></td>";
            ans+="<td>"+obj["moviename"]+"</td>";
             ans+="<td>"+obj["description"]+"</td>";
            
       ans+="</tr>";
             
         }
          ans+="</tbody>";
         ans+="</table>";
          document.getElementById("screen").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewmovies", true);
  xhttp.send();
}

            </script>
</body>

</html>