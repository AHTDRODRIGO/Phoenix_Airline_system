 <%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<h2>
<%             
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
                      
                            
%>
</h2>	
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="Admin.css">
    <link rel="stylesheet" href="Admin_table.css">
   
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Phoenix <br>Airline</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="admin_user.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
        <li>
            <a href="admin_booking.jsp" class="active">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Booking Details</span>
          </a>
        </li>
        <li>
          <a href="admin_G1.jsp" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Grade 01 Staff Details</span>
          </a>
        </li>
        <li>
           <a href="admin_G2.jsp" >
            <i class='bx bx-pie-chart-alt-2'  ></i>
            <span class="links_name">Grade 02 Staff Details</span>
          </a>
        </li>
         <li>
               <a href="admin_staff.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name"> Register Staff</span>
          </a>
        </li>
             
      <li class="">
          <a href="index.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Home</span>
          </a>
        </li>
       
        <li class="log_out"> 
          <a href="./logout">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>            
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      
     
      <div class="profile-details">
        <img src="Profile-Icon.png" alt="">
        <span class="admin_name"><%out.print(uname);%></span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

  
  <!------------------------------------------------------------------------------------------------->
  
  <div class="home-content">
     <div class="overview-boxes">
        

        <div class="box">
          <div class="right-side">
             <div class="box-topic">Total Bookings</div>
            <div class="number">
            <%
                String flightbookcount=obje.flightbookcount();
                out.print(flightbookcount);
                %>
            </div>
           </div>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Users</div>
            <div class="number"><%
                String usercount=obje.usercount();
                out.print(usercount);
                %>
             </div>
           </div>
         </div>


        div class="box">
          <div class="right-side">
               <div class="box-topic">Total G 01 Staff members</div>
            <div class="number">
                <%
                dbconnect obje =new dbconnect();
                String G1empcount=obje.G1empcount();
                out.print(G1empcount);
                %>
            </div>
          </div>
        </div>


        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total G 02 Staff members</div>
            <div class="number"><%
                String G2empcount=obje.G2empcount();
                out.print(G2empcount);
                %></div>
           </div>
         </div>
      </div>
    </div>
  </div>


      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">User Details</div>


<!------------------------------------------------------------------------------------------------------------------------>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
          <%
              
       
        out.println("<br>");  
          
        List<model.userdetailsbean> list=model.dbconnect.getuserdetails();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Username</th><th>Fullname</th><th>Email</th><th>Password</th><th></th><th></th><th></th>");  
        for(model.userdetailsbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getusername()+"</td><td>"+"&nbsp"+e.getfullname()+"</td><td>"+"&nbsp "+e.getemail()+"</td><td>"+"&nbsp "+e.getpassword()+"</td><td> <form action='./deleteusers' method='post'><input type='hidden' name='username' value="+e.getusername()+"> <input type='submit' value='Delete'>  </form></td></tr>");  
        }  
        out.print("</table>");  
        out.close(); 
          %>
          
        </div>
        
      </div>
    </div>
  </section>


</body>
</html>