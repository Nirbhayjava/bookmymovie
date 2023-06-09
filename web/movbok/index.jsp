<%-- 
    Document   : index
    Created on : 21-Mar-2023, 11:32:35 am
    Author     : macbookair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from askbootstrap.com/preview/movbok/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Mar 2023 07:32:29 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" href="img/logo-icon.png">
<title>bookmyshow</title>

<link rel="stylesheet" type="text/css" href="vendor/slick/slick.min.css" />
<link rel="stylesheet" type="text/css" href="vendor/slick/slick-theme.min.css" />

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="css/osahan.css" rel="stylesheet">s
<script>
    function viewmovie()
{
    var ans="";
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
//          console.log(localStorage.getItem("myarray"));
              ans+="<div class=\"col-xl-3 col-md-6 mb-4\">";
ans+="<div class=\"card m-card shadow-sm border-0\">";
ans+="<a href=\"movie_detail.jsp?id="+obj.id+"\">";
ans+="<div class=\"m-card-cover\">";
ans+="<div class=\"position-absolute bg-white shadow-sm-sm rounded text-center p-2 m-2 love-box\">";
ans+="<h6 class=\"text-gray-900 mb-0 font-weight-bold\"><i class=\"fas fa-heart text-danger\"></i> 74%</h6>";
ans+="<small class=\"text-muted\">88,865</small>";
ans+="</div>";
ans+="<img src="+obj.photo+" class=\"card-img-top\" alt=\"...\">";
ans+="</div>";
ans+="<div class=\"card-body p-3\">";
ans+="<h5 class=\"card-title text-white mb-1\">"+obj.moviename+"</h5>";
ans+="<p class=\"card-text\"><small class=\"text-white\">"+obj.language+"</small> <small class=\"text-danger ml-2\"><i class=\"fas fa-calendar-alt fa-sm\"></i> 22 AUG</small> </p>";
ans+="</div>";
ans+="</a>";
ans+="</div>";
ans+="</div>";
             
         }
         
          document.getElementById("movies").innerHTML = ans;
    }
  };
  xhttp.open("POST", "../viewmovies", true);
  xhttp.send();
}
</script>
</head>
<body onload="viewmovie()">
<nav class="navbar navbar-expand navbar-dark topbar static-top shadow-sm bg-dark osahan-nav-top">
<div class="container">

<a class="navbar-brand" href="index.html"><img src="img/logo.png" alt=""></a>

<form class="d-none d-sm-inline-block form-inline mr-auto my-2 my-md-0 mw-100 navbar-search">
<div class="input-group">
<input type="text" class="form-control bg-white border-0 small" placeholder="Search for Movies, Events, Plays, Sports and Activities..." aria-label="Search" aria-describedby="basic-addon2">
<div class="input-group-append">
<button class="btn bg-white" type="button">
<i class="fas fa-search fa-sm"></i>
</button>
</div>
</div>
</form>

<ul class="navbar-nav ml-auto">

<li class="nav-item dropdown no-arrow d-sm-none">
<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="fas fa-search fa-fw"></i>
</a>

<div class="dropdown-menu dropdown-menu-right p-3 shadow-sm animated--grow-in" aria-labelledby="searchDropdown">
<form class="form-inline mr-auto w-100 navbar-search">
<div class="input-group">
<input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
<div class="input-group-append">
<button class="btn btn-primary" type="button">
<i class="fas fa-search fa-sm"></i>
</button>
</div>
</div>
</form>
</div>
</li>

<li class="nav-item no-arrow mx-1">
<a class="nav-link" href="offers.html">
<i class="fas fa-fire fa-fw"></i>

<span class="badge badge-danger bg-gradient-danger">NEW</span>
</a>
</li>
<li class="nav-item dropdown no-arrow mx-1">
<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="fas fa-bell fa-fw"></i>

<span class="badge badge-danger badge-counter">8+</span>
</a>

<div class="dropdown-list dropdown-menu dropdown-menu-right shadow-sm animated--grow-in" aria-labelledby="alertsDropdown">
<h6 class="dropdown-header">
Alerts
</h6>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="mr-3">
<div class="icon-circle bg-primary text-white">
KN
</div>
</div>
<div>
<div class="small text-gray-500">December 12, 2019</div>
<span class="font-weight-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
</span>
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="dropdown-list-image mr-3">
<img class="rounded-circle w-60" src="img/s1.png" alt="">
<div class="status-indicator bg-success"></div>
</div>
<div>
<div class="text-truncate">Duis vel est sit amet ipsum egestas efficitur.</div>
<div class="small text-gray-500">Gurdeep Osahan · 58m</div>
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="dropdown-list-image mr-3">
<img class="rounded-circle w-60" src="img/s2.png" alt="">
<div class="status-indicator"></div>
</div>
<div>
<div class="text-truncate">Pellentesque euismod diam sit amet nibh molestie, imperdiet feugiat mi feugiat.</div>
<div class="small text-gray-500">Jae Chun · 1d</div>
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="dropdown-list-image mr-3">
<img class="rounded-circle w-60" src="img/s3.png" alt="">
<div class="status-indicator bg-warning"></div>
</div>
<div>
<div class="text-truncate">Quisque ac justo bibendum nunc fringilla pharetra nec sit amet mauris.</div>
<div class="small text-gray-500">Morgan Alvarez · 2d</div>
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="mr-3">
<div class="icon-circle bg-success">
<i class="fas fa-donate text-white"></i>
</div>
</div>
<div>
<div class="small text-gray-500">December 7, 2019</div>
Sed aliquet nibh nec odio congue, in condimentum massa dapibus.
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="mr-3">
<div class="icon-circle bg-warning">
<i class="fas fa-exclamation-triangle text-white"></i>
</div>
</div>
<div>
<div class="small text-gray-500">December 2, 2019</div>
Pellentesque sit amet nunc consectetur, porta sapien a, bibendum dolor.
</div>
</a>
<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
</div>
</li>
 
<li class="nav-item dropdown no-arrow">
<a class="nav-link dropdown-toggle pr-0" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<span class="mr-2 d-none d-lg-inline text-white small">Askbootstrap</span>
<img class="img-profile rounded-circle" src="img/s4.png">
</a>

<div class="dropdown-menu dropdown-menu-right shadow-sm animated--grow-in" aria-labelledby="userDropdown">
<a class="dropdown-item" href="profile.html">
<i class="fas fa-user-circle fa-sm fa-fw mr-2 text-gray-400"></i>
Profile
</a>
<a class="dropdown-item" href="profile.html">
<i class="fas fa-heart fa-sm fa-fw mr-2 text-gray-400"></i>
Watchlist
</a>
<a class="dropdown-item" href="profile.html">
<i class="fas fa-list-alt fa-sm fa-fw mr-2 text-gray-400"></i>
Your Lists
</a>
<a class="dropdown-item" href="profile.html">
<i class="fas fa-cog fa-sm fa-fw mr-2 text-gray-400"></i>
Account Settings
</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
Logout
</a>
</div>
</li>
</ul>
</div>
</nav>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark osahan-nav-mid">
<div class="container">
<ul class="navbar-nav mr-auto">
<li class="nav-item">
<a class="nav-link" href="movies.html">
<i class="fas fa-fw fa-film"></i>
<span>Movies</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="events.html">
<i class="fas fa-fw fa-glass-cheers"></i>
<span>Events</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="people.html">
<i class="fas fa-fw fa-users"></i>
<span>People</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="sports.html">
<i class="fas fa-fw fa-futbol"></i>
<span>Sports</span></a>
</li>
</ul>
<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarResponsive">
<ul class="navbar-nav ml-auto">
<li class="nav-item">
<a class="nav-link" href="offers.html">
Offers</a>
</li>
<li class="nav-item">
<a class="nav-link" href="about.html">About</a>
</li>
<li class="nav-item">
<a class="nav-link" href="contact.html">Contact</a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Pages
</a>
<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
<a class="dropdown-item" href="movies.html">Movies</a>
<a class="dropdown-item" href="movies-detail.html">Movie Detail</a>
<a class="dropdown-item" href="events.html">Events</a>
<a class="dropdown-item" href="events-detail.html">Event Detail</a>
<a class="dropdown-item" href="people.html">People</a>
<a class="dropdown-item" href="people-detail.html">People Detail</a>
<a class="dropdown-item" href="sports.html">Sports</a>
<a class="dropdown-item" href="sports-detail.html">Sport Detail</a>
</div>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
Other Pages
</a>
<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
<a class="dropdown-item" href="login.html">Login</a>
<a class="dropdown-item" href="register.html">Register</a>
<a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
<a class="dropdown-item" href="faq.html">FAQ</a>
<a class="dropdown-item" href="404.html">404 Page</a>
<a class="dropdown-item" href="blank.html">Blank Page</a>
</div>
</li>
</ul>
</div>
</div>
</nav>
<div class="pt-3 pb-3 bg-white shadow-sm">
<div class="osahan-slider">
<div class="osahan-slider-item"><img src="img/slider3.jpg" class="img-fluid rounded" alt="..."></div>
<div class="osahan-slider-item"><img src="img/slider1.jpg" class="img-fluid rounded" alt="..."></div>
<div class="osahan-slider-item"><img src="img/slider2.jpg" class="img-fluid rounded" alt="..."></div>
</div>
</div>
<div class="container">

<div class="d-sm-flex align-items-center justify-content-between mt-5 mb-3 overflow-hidden">
<h1 class="h5 mb-0 float-left">Offers</h1>
<a href="offers.html" class="d-sm-inline-block text-xs float-right">View All <i class="fas fa-eye fa-sm"></i></a>
</div>
<div class="row">
<div class="col-xl-3 col-md-4 mb-4">
<div class="card offer-card shadow-sm border-0">
<a href="#">
<div class="m-card-cover">
<img src="img/o1.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<img src="img/l1.png" class="rounded-circle" alt="...">
<p class="card-text text-gray-900 mt-3 mb-1">SBI Signature/Elite Credit Card Offer </p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Valid till <span class="text-gray-700">15 Oct 2019 23:59</span></small></p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-4 mb-4">
<div class="card offer-card shadow-sm border-0">
<a href="#">
<div class="m-card-cover">
<img src="img/o2.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<img src="img/l2.png" class="rounded-circle" alt="...">
<p class="card-text text-gray-900 mt-3 mb-1">Google Pay New User Offer </p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Valid till <span class="text-gray-700">15 Oct 2019 23:59</span></small></p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-4 mb-4">
<div class="card offer-card shadow-sm border-0">
<a href="#">
<div class="m-card-cover">
<img src="img/o3.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<img src="img/l3.png" class="rounded-circle" alt="...">
<p class="card-text text-gray-900 mt-3 mb-1">HDFC Bank Times Card Offer</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Valid till <span class="text-gray-700">15 Oct 2019 23:59</span></small></p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-4 mb-4">
<div class="card offer-card shadow-sm border-0">
<a href="#">
<div class="m-card-cover">
<img src="img/o4.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<img src="img/l4.png" class="rounded-circle" alt="...">
<p class="card-text text-gray-900 mt-3 mb-1">Visa Blockbuster Weekends Offer </p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Valid till <span class="text-gray-700">15 Oct 2019 23:59</span></small></p>
</div>
</a>
</div>
</div>
</div>

<div class="d-sm-flex align-items-center justify-content-between mt-4 mb-3 overflow-hidden">
<h1 class="h5 mb-0 float-left">Movies</h1>
<a href="movies.html" class="d-sm-inline-block text-xs float-right">View All <i class="fas fa-eye fa-sm"></i></a>
</div>

    <div class="row" id="movies">
<div class="col-xl-3 col-md-6 mb-4">
<div class="card m-card shadow-sm border-0">
<a href="movies-detail.html">
<div class="m-card-cover">
<div class="position-absolute bg-white shadow-sm-sm rounded text-center p-2 m-2 love-box">
<h6 class="text-gray-900 mb-0 font-weight-bold"><i class="fas fa-heart text-danger"></i> 88%</h6>
<small class="text-muted">23,421</small>
</div>
<img src="img/m1.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<h5 class="card-title text-white mb-1">Jumanji: The Next Level</h5>
<p class="card-text"><small class="text-white">English</small> <small class="text-danger ml-2"><i class="fas fa-calendar-alt fa-sm"></i> 22 AUG</small> </p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card m-card shadow-sm border-0">
<a href="movies-detail.html">
<div class="m-card-cover">
<div class="position-absolute bg-white shadow-sm-sm rounded text-center p-2 m-2 love-box">
<h6 class="text-gray-900 mb-0 font-weight-bold"><i class="fas fa-heart text-danger"></i> 50%</h6>
<small class="text-muted">8,784</small>
</div>
<img src="img/m2.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<h5 class="card-title text-white mb-1">Gemini Man</h5>
<p class="card-text"><small class="text-white">English</small> <small class="text-danger ml-2"><i class="fas fa-calendar-alt fa-sm"></i> 22 AUG</small> </p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card m-card shadow-sm border-0">
<a href="movies-detail.html">
<div class="m-card-cover">
<div class="position-absolute bg-white shadow-sm-sm rounded text-center p-2 m-2 love-box">
<h6 class="text-gray-900 mb-0 font-weight-bold"><i class="fas fa-heart text-danger"></i> 20%</h6>
<small class="text-muted">69,123</small>
</div>
<img src="img/m3.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<h5 class="card-title text-white mb-1">The Current War</h5>
<p class="card-text"><small class="text-white">English</small> <small class="text-danger ml-2"><i class="fas fa-calendar-alt fa-sm"></i> 22 AUG</small> </p>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card m-card shadow-sm border-0">
<a href="movies-detail.html">
<div class="m-card-cover">
<div class="position-absolute bg-white shadow-sm-sm rounded text-center p-2 m-2 love-box">
<h6 class="text-gray-900 mb-0 font-weight-bold"><i class="fas fa-heart text-danger"></i> 74%</h6>
<small class="text-muted">88,865</small>
</div>
<img src="img/m4.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-3">
<h5 class="card-title text-white mb-1">Charlie's Angels</h5>
<p class="card-text"><small class="text-white">English</small> <small class="text-danger ml-2"><i class="fas fa-calendar-alt fa-sm"></i> 22 AUG</small> </p>
</div>
</a>
</div>
</div>
</div>

<div class="d-sm-flex align-items-center justify-content-between mt-4 mb-3">
<h1 class="h5 mb-0">Collections</h1>
</div>

<div class="row">
<div class="col-xl-12 col-md-12 mb-4">
<div class="collections-slider">
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c1.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c2.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c3.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c4.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c5.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c2.jpg" class="img-fluid" alt="..."></a>
</div>
<div class="card c-card shadow-sm border-0 overflow-hidden">
<a href="#"><img src="img/c3.jpg" class="img-fluid" alt="..."></a>
</div>
</div>
</div>
</div>

<div class="d-sm-flex align-items-center justify-content-between mt-4 mb-3 overflow-hidden">
<h1 class="h5 mb-0 float-left">Events</h1>
<a href="events.html" class="d-sm-inline-block text-xs float-right">View All <i class="fas fa-eye fa-sm"></i></a>
</div>

<div class="row">
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="events-detail.html">
<div class="m-card-cover">
<img src="img/e1.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">07</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">Glasgow International Comedy Festival</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Glasgow, Scotland</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="events-detail.html">
<div class="m-card-cover">
<img src="img/e2.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">10</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">Vancouver Fashion Week</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Vancouver, Canada</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="events-detail.html">
<div class="m-card-cover">
<img src="img/e3.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">15</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">DC Environmental Film Festival</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Washington DC, USA</small></p>
</div>
</div>
</div>
 </a>
 </div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="events-detail.html">
<div class="m-card-cover">
<img src="img/e4.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">22</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">Cape Town International Jazz Festival</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Cape Town, South Africa</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
</div>

<div class="d-sm-flex align-items-center justify-content-between mt-4 mb-3 overflow-hidden">
<h1 class="h5 mb-0 float-left">Sports</h1>
<a href="sports.html" class="d-sm-inline-block text-xs float-right">View All <i class="fas fa-eye fa-sm"></i></a>
</div>

<div class="row pb-4 mb-2">
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="sports-detail.html">
<div class="m-card-cover">
<img src="img/s1.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">25</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">The FIFA World Cup</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> Glasgow, Scotland</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="sports-detail.html">
<div class="m-card-cover">
<img src="img/s2.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">28</h6>
<small class="text-muted">OCT</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">The Olympic Games</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> United States</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="sports-detail.html">
<div class="m-card-cover">
<img src="img/s3.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">12</h6>
<small class="text-muted">NOV</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">The 24 Hours of Le Mans</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> France</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<div class="card e-card shadow-sm border-0">
<a href="sports-detail.html">
<div class="m-card-cover">
<img src="img/s4.jpg" class="card-img-top" alt="...">
</div>
<div class="card-body p-0">
<div class="row no-gutters align-items-center">
<div class="col-2 auto py-3 pl-3">
<div class="bg-white rounded text-center">
<h6 class="text-danger mb-0 font-weight-bold">21</h6>
<small class="text-muted">NOV</small>
</div>
</div>
<div class="col-10 p-3">
<p class="card-text text-gray-900 mb-1">The Super Bowl</p>
<p class="card-text"><small class="text-muted"><i class="fas fa-map-marker-alt fa-sm mr-1"></i> United States</small></p>
</div>
</div>
</div>
</a>
</div>
</div>
</div>
</div>

<div class="pt-5 pb-4 bg-dark footer">
<div class="container">
<div class="row">
<div class="col-xl-3 col-md-6 mb-4">
<h6>BEST LANGUAGE GENRE MOVIES</h6>
<ul>
<li><a href="#">Punjabi Action Movies</a></li>
<li><a href="#">English Animated Movies</a></li>
<li><a href="#">English Fantasy Movies</a></li>
<li><a href="#">English Comedy Movies</a></li>
<li><a href="#">English Action Movies</a></li>
<li><a href="#">Tamil Action Movies</a></li>
<li><a href="#">Hindi Animated Movies</a></li>
</ul>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<h6>MOVIES BY GENRE</h6>
<ul>
<li><a href="#">Best Animated Movies</a></li>
<li><a href="#">Best Fantasy Movies</a></li>
<li><a href="#">Best Comedy Movies</a></li>
<li><a href="#">Best Action Movies</a></li>
<li><a href="#">Tamil Action Movies</a></li>
<li><a href="#">Punjabi Action Movies</a></li>
<li><a href="#">Hindi Animated Movies</a></li>
</ul>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<h6>POPULAR MOVIES</h6>
<ul>
<li><a href="#">English Comedy Movies</a></li>
<li><a href="#">English Action Movies</a></li>
<li><a href="#">Punjabi Action Movies</a></li>
<li><a href="#">English Animated Movies</a></li>
<li><a href="#">English Fantasy Movies</a></li>
<li><a href="#">Tamil Action Movies</a></li>
<li><a href="#">Hindi Animated Movies</a></li>
</ul>
</div>
<div class="col-xl-3 col-md-6 mb-4">
<h6>ABOUT MOVBOK</h6>
<ul>
<li><a href="#">About Us</a></li>
<li><a href="#">Press Coverage</a></li>
<li><a href="#">Current Openings</a></li>
<li><a href="#">Contact Us</a></li>
<li><a href="#">English Action Movies</a></li>
<li><a href="#">Tamil Action Movies</a></li>
<li><a href="#">Press Release</a></li>
</ul>
</div>
</div>
</div>
</div>
<footer class="py-5">
<div class="container">
<p class="m-0 text-center">Copyright &copy; <strong>Movbok</strong> 2020 | Made with <i class="fas fa-heart fa-fw text-danger"></i> by <a class="text-danger" target="_blank" href="https://www.instagram.com/iamgurdeeposahan/">Askbootstrap</a></p>
</div>

</footer>

<script src="vendor/jquery/jquery.min.js" ></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js" ></script>

<script src="vendor/slick/slick.min.js"></script>

<script src="js/osahan.js" ></script>
<script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="dc7da03a0f1aafe6e656b651-|49" defer=""></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"7a9bc82d48929b98","version":"2023.2.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/movbok/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Mar 2023 07:32:51 GMT -->
</html>