<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Test side Nav</title>
      <link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
      <link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
      <link rel="stylesheet" href="/StarkLearningApp/css/all.css">
      <link rel="stylesheet" href="/StarkLearningApp/css/testSideNav.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script type="text/javascript" src="/StarkLearningApp/js/testSideNav.js"></script>
   </head>
   <body>
      <!-- Bootstrap NavBar -->
      <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
         <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <a class="navbar-brand" href="#">
         <img src="https://v4-alpha.getbootstrap.com/assets/brand/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
         <span class="menu-collapsed">My Bar</span>
         </a>
         <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
               <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#">Features</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="#">Pricing</a>
               </li>
               <!-- This menu is hidden in bigger devices with d-sm-none. 
                  The sidebar isn't proper for smaller screens imo, so this dropdown menu can keep all the useful sidebar itens exclusively for smaller screens  -->
               <li class="nav-item dropdown d-sm-block d-md-none">
                  <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Menu
                  </a>
                  <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
                     <a class="dropdown-item" href="#">Dashboard</a>
                     <a class="dropdown-item" href="#">Profile</a>
                     <a class="dropdown-item" href="#">Tasks</a>
                     <a class="dropdown-item" href="#">Etc ...</a>
                  </div>
               </li>
               <!-- Smaller devices menu END -->
            </ul>
         </div>
      </nav>
      <!-- NavBar END -->
      <!-- Bootstrap row -->
      <div class="row" id="body-row">
         <!-- Sidebar -->
         <div id="sidebar-container" class="sidebar-expanded d-none d-md-block col-2">
            <!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
            <!-- Bootstrap List Group -->
            <ul class="list-group sticky-top sticky-offset">
               <!-- Separator with title -->
               <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                  <small>MAIN MENU</small>
               </li>
               <!-- /END Separator -->
               <!-- Menu with submenu -->
               <a href="#submenu1" data-toggle="collapse" aria-expanded="false" class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                  <div class="d-flex w-100 justify-content-start align-items-center">
                     <span class="fa fa-dashboard fa-fw mr-3"></span>
                     <span class="menu-collapsed">Dashboard</span>
                     <span class="submenu-icon ml-auto"></span>
                  </div>
               </a>
               <!-- Submenu content -->
               <div id="submenu1" class="collapse sidebar-submenu">
                  <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                  <span class="menu-collapsed">Charts</span>
                  </a>
                  <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                  <span class="menu-collapsed">Reports</span>
                  </a>
                  <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                  <span class="menu-collapsed">Tables</span>
                  </a>
               </div>
               <a href="#submenu2" data-toggle="collapse" aria-expanded="false" class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                  <div class="d-flex w-100 justify-content-start align-items-center">
                     <span class="fa fa-user fa-fw mr-3"></span>
                     <span class="menu-collapsed">Profile</span>
                     <span class="submenu-icon ml-auto"></span>
                  </div>
               </a>
               <!-- Submenu content -->
               <div id="submenu2" class="collapse sidebar-submenu">
                  <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                  <span class="menu-collapsed">Settings</span>
                  </a>
                  <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                  <span class="menu-collapsed">Password</span>
                  </a>
               </div>
               <a href="#" class="bg-dark list-group-item list-group-item-action">
                  <div class="d-flex w-100 justify-content-start align-items-center">
                     <span class="fa fa-tasks fa-fw mr-3"></span>
                     <span class="menu-collapsed">Tasks</span>
                  </div>
               </a>
               <!-- Separator with title -->
               <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                  <small>OPTIONS</small>
               </li>
               <!-- /END Separator -->
               <a href="#" class="bg-dark list-group-item list-group-item-action">
                  <div class="d-flex w-100 justify-content-start align-items-center">
                     <span class="fa fa-calendar fa-fw mr-3"></span>
                     <span class="menu-collapsed">Calendar</span>
                  </div>
               </a>
               <a href="#" class="bg-dark list-group-item list-group-item-action">
                  <div class="d-flex w-100 justify-content-start align-items-center">
                     <span class="fa fa-envelope-o fa-fw mr-3"></span>
                     <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">5</span></span>
                  </div>
               </a>
            </ul>
            <!-- List Group END-->
         </div>
         <!-- sidebar-container END -->
         <!-- MAIN -->
         <div class="col py-3">
            <h1>
               Collapsing Menu
               <small class="text-muted">Version 2.1</small>
            </h1>
            <div class="card">
               <h4 class="card-header">Requirements</h4>
               <div class="card-body">
                  <ul>
                     <li>JQuery</li>
                     <li>Bootstrap 4 beta-3</li>
                  </ul>
               </div>
            </div>
            <hr>
            <p>Sriracha biodiesel taxidermy organic post-ironic, Intelligentsia salvia mustache 90's code editing brunch. Butcher polaroid VHS art party, hashtag Brooklyn deep v PBR narwhal sustainable mixtape swag wolf squid tote bag. Tote bag cronut semiotics,
               raw denim deep v taxidermy messenger bag. Tofu YOLO Etsy, direct trade ethical Odd Future jean shorts paleo. Forage Shoreditch tousled aesthetic irony, street art organic Bushwick artisan cliche semiotics ugh synth chillwave meditation. Shabby
               chic lomo plaid vinyl chambray Vice. Vice sustainable cardigan, Williamsburg master cleanse hella DIY 90's blog.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
            <hr>
            <p>Ethical Kickstarter PBR asymmetrical lo-fi. Dreamcatcher street art Carles, stumptown gluten-free Kickstarter artisan Wes Anderson wolf pug. Godard sustainable you probably haven't heard of them, vegan farm-to-table Williamsburg slow-carb readymade
               disrupt deep v. Meggings seitan Wes Anderson semiotics, cliche American Apparel whatever. Helvetica cray plaid, vegan brunch Banksy leggings +1 direct trade. Wayfarers codeply PBR selfies. Banh mi McSweeney's Shoreditch selfies, forage fingerstache
               food truck occupy YOLO Pitchfork fixie iPhone fanny pack art party Portland.
            </p>
         </div>
         <!-- Main Col END -->
      </div>
      <!-- body-row END -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
   </body>
</html>