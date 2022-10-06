<!DOCTYPE html>
<meta charset="UTF-8">
    <meta name="viewport"
    content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,
    minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
  
        <link rel="stylesheet" type="text/css" href="airline.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://raw.githubusercontent.com/jerryluk/jquery.autogrow/master/jquery.autogrow-min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

</head>
<body>
   
</head>
<body>

            <title>Document</title>
        </head>
        <body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <nav class="navbar navbar-expand-sm navbar-dark" style="background-color:#0d809c">
                 <a href="" class="navbar-brand mb-0 h1 ">
                     <img src="2.png" width="100" height="100" class="d-inline-block align-top" /></a> 
                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#togglemobilemenu" aria-controls="#togglemobilemenu" aria-expanded="false" aria-label="toggle navigaton"><span class="navbar-toggler-icon"></span></button>
                 <div class="collapse navbar-collapse" id="togglemobilemenu">
                    <ul class="navbar-nav ms-auto text-center">
                         <li class="nav-item"><a href="" class="nav-link">HOME</a></1i> 
                         <li class="nav-item"><a href="" class="nav-link">BOOKING FLIGHTS</a></1i> 
                         <li class="nav-item"><a href="" class="nav-link">FLYING STATUS</a></1i> 
                         <li class="nav-item"><a href="" class="nav-link">PROFILE</a></1i> 
                          <li class="nav-item"><a href="#dform" class="btn btn-primary ms-lg-3">SIGNG-OUT</a></li>
                          


                    
                    
                       
                        
                    </ul>
                    
                </div>
            </nav>

           <div class="hero vh-100 d-flex align-items-center" id="home">
              <div class="container">
                <div class="row">
                   
                    <div class="col-lg-7 mx-auto text-center">
                        <h1 class="display-5 text-white">FLY WITH US</h1>
                        <br>
                        <a href="#booking" class="btn me-2 btn-primary">MORE</a>
                    </div>
                </div>
              </div>
           </div>

           <!------------------------------------- book a flight section starts  ----------------------------------->

<section class="booking" >

    <h1 class="heading-title">Book Your Flight</h1>
 
   <form action="filterflights.jsp" method="post" class="book-form"  style="width: 100%; opacity: 0.9;">
       <div class="flex">
       
                         <div class="form-group"  >
                       
                               <label for="roundtrip">
                                  <input type="radio" id="roundtrip" value="on" name="flight-type1" onclick="text(0)" checked>
                                  <span></span>Roundtrip
                               </label>
                               <label for="one-way">
                                  <input type="radio" id="one-way" value="off" name="flight-type1" onclick="text(1)">
                                  <span></span>One way
                               </label>
                            </div>
                         </div>
 
 <div class="row">
                            <div class="col-md-6">
                         <div class="form-group">
                            <span class="form-label" style="font-weight: bold;
   
    font-size: 1.8rem;
    text-transform: none;
    margin-top: 1.5rem;
    border-radius: 15px; ">Flying from :</span>
                            <input class="form-control" type="text"  placeholder="Your location" name="flightfrom" style=" width: 100%;
    padding:1.2rem 1.4rem;
    font-size: 1.8rem;
 color: var(--light-black);
    text-transform: none;
    margin-top: 1.5rem;
    border-radius: 10px; ">
                            
                         </div>
                      </div>
                   <div class="col-md-6">
                         <div class="form-group">
                             <span class="form-label" style="font-weight: bold;
   
    font-size: 1.8rem;
    text-transform: none;
    margin-top: 1.5rem;
   ">Flying to :</span>
                            <input class="form-control" placeholder="Your destination" name="flightto" type="text" style=" width: 100%;
    padding:1.2rem 1.4rem;
    font-size: 1.8rem;
 color: var(--light-black);
    text-transform: none;
    margin-top: 1.5rem;
    border-radius: 10px; ">
                           
                         </div>
                      </div>
                   </div>
                         <div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                   <span class="form-label" style="font-weight: bold; width: 100%;
   
    font-size: 1.8rem;
    text-transform: none;
    margin-top: 1.5rem;
    border-radius: 15px; ">Depart Date :</span>
                                  <input class="form-control" type="date" name="departdate"style=" width: 100%;
    padding:1.2rem 1.4rem;
    font-size: 1.8rem;
 color: var(--light-black);
    text-transform: uppercase;
    margin-top: 1.5rem;
    border-radius: 10px; ">
                                 
                               </div>
                            </div>
                            <div class="col-md-6">
                               <div class="form-group" id="mycode">
                                  <span class="form-label" style="font-weight: bold; width: 100%;
   
    font-size: 1.8rem;
    text-transform: none;
    margin-top: 1.5rem;
    border-radius: 15px; ">Return Date :</span>
                                  <input class="form-control" type="date" name="returndate" style=" width: 100%;
    padding:1.2rem 1.4rem;
    font-size: 1.8rem;
 color: var(--light-black);
    text-transform: uppercase;
    margin-top: 1.5rem;
    border-radius: 10px; ">
                                  
                               </div>
                            </div>
                         </div>
                         
                      <center>
         <input type="submit" value="search" class="btn3" name="send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="rest" value="cancle" class="btn3" name="delete" id="2">
      </center> 
        </div>
    </form>
 </section>
 
 
 
 
       <script src="js/jquery.min.js"></script>
          <script>
             $('.form-control').each(function () {
                floatedLabel($(this));
             });
             $('.form-control').on('input', function () {
                floatedLabel($(this));
             });
             function floatedLabel(input) {
                var $field = input.closest('.inputBox');
                if (input.val()) {
                   $field.addClass('input-not-empty');
                } else {
                   $field.removeClass('input-not-empty');
                }
             }
          </script>
 <!-- book a flight section ends -->
 
    
  
 
     <!------------------------------------- flight status section starts  ----------------------------------->
 
 <section class="booking" name="s3">
 
    <h1 class="heading-title">Flight Status</h1>
 
    <form action="flight_status.jsp" method="post" class="book-form" style="width: 100%;">
       <div class="flex">
          <div class="inputBox">
            
              <input type="text" placeholder="From" name="flightfrom" style="font-size: 15px;">
          </div>
           
          <div class="inputBox">
            
              <input type="text" placeholder="TO" name="flightto"style="font-size: 15px;">
          </div>
           
          <div class="col-md-6">
                            <div class="form-group-1">
                               <input type="radio" name="ffID1" value="1">
                               <b class="check"> Search By Only Flight ID</b> <br>
                               <input type="radio" name="ffID1" value="0">
                               <b class="check"> Search By Only From & To</b> <br>
                            </div>
                         </div>
           <div class="inputBox">
                 <input type="text" placeholder="Flight ID" name="flightid" style="font-size: 15px;">
           </div>  
       </div>
       <div class="inputBox">
      <center>
         <input type="submit" value="search" class="btn3" name="send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="cancle" class="btn3" name="delete">
      </center> 
       </div>
    </form>
 </section>
 
 
  <script src="js/jquery.min.js"></script>
       <script>
          $('.form-control').each(function () {
             floatedLabel($(this));
          });
          $('.form-control').on('input', function () {
             floatedLabel($(this));
          });
          function floatedLabel(input) {
             var $field = input.closest('.form-group');
             if (input.val()) {
                $field.addClass('input-not-empty');
             } else {
                $field.removeClass('input-not-empty');
             }
          }
       </script>
 
 <!-- flight status section ends -->


 <!------------------------------- footer section starts  ----------------------------------------->


<section class="footer">

    <div class="box-container">
 
       <div class="box">
          <h3>About us</h3>
           <p class="p1">We hope to provide more efficient flight booking facility through phonix airlines service
          </p>
               
               <p class="p1">Contact Number: 078-11122289</p> 
       </div>
 
       <div class="box">
          <h3>quick links</h3>
          <a href="#home"> <i class="fas fa-angle-right"></i> home</a>
          <a href="#1"> <i class="fas fa-angle-right"></i> book a flight</a>
          <a href="#2"> <i class="fas fa-angle-right"></i> flight status</a>
          <a href="#profile"> <i class="fas fa-angle-right"></i> profile</a>
       </div>
 
       
 
       <div class="box">
          <h3>follow us</h3>
          <a href="https://www.facebook.com"> <i class="fab fa-facebook-f"></i> facebook </a>
          <a href="https://twitter.com/i/flow/login"> <i class="fab fa-twitter"></i> twitter </a>
          <a href="https://www.instagram.com/accounts/login/"> <i class="fab fa-instagram"></i> instagram </a>
          <a href="https://www.linkedin.com/login"> <i class="fab fa-linkedin"></i> linkedin </a>
       </div>
 
    </div>
    <div >
               <a href="#home"><center><img src="aaa.jpg" height="70px" width="155px"></center></a>
             </div> 
 
    <div class="credit"> 2022 &#169; phonix airline </div>
 
 </section>
 
 <!-- footer section ends -->
 
 <!-- swiper js link  -->
 <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
 
 <!-- custom js file link  -->
 <script src="./js/js_home.js"></script>
 
 
 
 </body>
 </html>
           

   
