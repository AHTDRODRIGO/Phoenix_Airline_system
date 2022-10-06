<%-- 
    Document   : userprofile
    Created on : sep 30, 2022, 4:33:45 AM
    Author     : sudilka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<h2><%             
Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();

                       
                      
                    if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }}
                        if(uname=="none"){response.sendRedirect("index.jsp");}        
                      
                            
      %></h2>	
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Profile</title>

   
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   
   <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

   
   <link rel="stylesheet" href="Profile_user.css">


      <script type="text/javascript">
         function text(x){
            if (x==0) 
               document.getElementById("mycode").style.display = "block";
            else
               document.getElementById("mycode").style.display = "none";
            return;
         }
      </script>
</head>
<body>
   
<!---------------------------- header section starts  ------------------------------->

<section class="header">

   <a href="#home" class="logo"><img src="logo_1.png" style="height: 50px; width: 150px;"></a>

   <nav class="navbar">
         
         <a href="./home.jsp">Home</a>
         <a href="./home.jsp#1">user</a>
         <a href="user_profile">User profile</a>
         <a href="index.jsp" class="signout-btn" style="color: white;">Sign Out</a>
      
   </nav>

   <div id="menu-btn" class="fas fa-bars"></div>

</section>
<!-- header section ends -->
   
<!------------------------------- Profile Section starts  ----------------------------------------->

<section id="profile">
   <div class="titles">
       <h1 class="Title1"> Phoenix-Airline </h1>
       <h3 class="heading-SubTitle"> User Dashboard </h3>
   </div>
</section>

<div class="tabs-container">
   <div class="tabs">
     <div class="tab active">Account settings</div>
     <div class="tab">Manage booking</div>
     <div class="tab">Contact us</div>
   </div>

   <div class="content-container">
     <div class="content active">
       <h3>Manage yours account</h3>
       
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                  <img class="Userpic" src="user_profile.png" title="user icons" width="90">
                  <h4><span><br><%out.print(uname);%></span></h4>
                  <p><%out.println("online");%><p>
                </div>
            </div>
       <table class="content-table">
          <thead>
             <tr>
                 
               <th>Full Name</th>
               <th>Email</th>
               <th>Phone</th>
               <th>Mobile</th>
               <th>Address</th>
               
             </tr>
           </thead>
           
           <tbody>
          <%
              

                
                    
         List<model.ticketidgenbean> list=model.dbconnect.getAllreservedetails(uname);  
        for(model.ticketidgenbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getf_name()+"</td></tr><tr><td>"+"&nbsp"+e.getemail()+"</td></tr><tr><td>"+"&nbsp "+e.getphone()+"</td></tr><tr>  <td>"+"&nbsp "+e.getmobile()+"</td></tr><tr><td>"+"&nbsp "+e.getfaddress()+"</td></tr><tr><td><div class="mt-5 text-right">
                      <button class="user_updatebutton" type="submit">update</button> <button class="user_deletebutton" type="submit">delete</button></div>");  
        }  
                  
        %>
           </tbody>
         </table>
     </div>
<!---------------------------------------------------------------------------------------->
     

   <div class="content-container">
     <div class="content active">
       <h3>Manage Tickets Booking Details</h3>
       
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
       <table  class="content-table">
          <thead>
             <tr>
                 
               <th>Ticket ID</th>
               <th>Flight ID</th>
               <th>User Name</th>
               
             </tr>
           </thead>
           
           <tbody>
          <%
              
                
                    
         List<model.ticketidgenbean> list=model.dbconnect.getAllreservedetails(uname);  
        for(model.ticketidgenbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getticketid()+"</td><td>"+"&nbsp"+e.getflightid()+"</td><td>"+"&nbsp "+e.getuname()+"</td>  </tr>");  
        }  
                  
        %>
           </tbody>
         </table>
     </div>

     <!---------------------------------------------------------------------------------------------------->

     <div class="content">
       <h3>Contact Center</h3>
       <p>
           We are committed to providing our customers with a memorable experience, and your feedback is important for us to make that possible.
       </p>
       <div class="contact-form">
           
          
           <div class="input-fields">
                <form action="./userscontactus" method="POST">
                    <input type="text" class="input" placeholder="Name" name="name">
             <input type="text" class="input" placeholder="Email Address" name="email">
             <input type="text" class="input" placeholder="Phone" name="phoneno">
           </div>
           <div class="msg">
               <textarea type="textarea" placeholder="Message" name="messege"></textarea>
             <div class="btn"><input type="submit" name="submit" value="Send"></div>
                </form>
           </div>
        
         </div>
     </div>

   </div>
 </div>

 <script src="js/VerticalTabs.js"> </script>

<!------------------------------- Profile Section Ends  ------------------------------------------->

<!------------------------------- footer section starts  ----------------------------------------->


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