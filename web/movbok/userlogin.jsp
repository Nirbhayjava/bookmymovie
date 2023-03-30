
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="/BookmyMovie/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/BookmyMovie/css/sb-admin-2.min.css" rel="stylesheet">
 <script>
        function go()
        {
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
    if (this.readyState == 4 && this.status == 200) {
         alert(this.response);
         if(this.response === "success")
         {
             window.location.href = "index.jsp";
         }
    }
  };
  xhttp.open("POST", "../user_login", true);
  xhttp.send(formdata);
        }
    </script>
      <style>
        .bgimage
        {
            background:url("../multiplex/back.jpeg");
           background-position:center;
           background-size:cover;
        }
    </style>
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bgimage"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">User Login!</h1>
                                    </div>
                                    <form class="user" id="form1">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="name" name="name" aria-describedby="emailHelp"
                                                placeholder="Enter Multiplex Name...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="pass" name="pass" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-primary btn-user btn-block" onclick="go()">
                                            Login
                                        </button>
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

</body>

</html>
