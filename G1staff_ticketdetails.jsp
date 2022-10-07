

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

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Staff G1 Dashboard</title>
    <link rel="stylesheet" href="G1G2staffstyle.css">
    
   
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
            <a href="G1staff_dashboard.jsp" >
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
        <li>
          <a href="G1staff_flightdetails.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Flight Details</span>
          </a>
        </li>
       
        <li>
           
          <a href="G1staff_ticketdetails.jsp" class="active" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Ticket Details</span>
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
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Grade 01 Staff Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name"><%out.print(uname);%></span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

  
    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
               <div class="box-topic">Total Bookings</div>
            <div class="number">
                <%
                dbconnect obje =new dbconnect();
                String flightbookcount=obje.flightbookcount();
                out.print(flightbookcount);
                %>
            </div>
            
          </div>
          <i class='bx bx-cart-alt cart'></i>
        </div>
        <div class="box">
          <div class="right-side">
             <div class="box-topic">Total Users</div>
            <div class="number">
            <%
                String usercount=obje.usercount();
                out.print(usercount);
                %>
            </div>
            
          </div>
          <i class='bx bxs-cart-add cart two' ></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total G 01 Staff Members</div>
            <div class="number"><%
                String G1empcount=obje.G1empcount();
                out.print(G1empcount);
                %></div>
            
          </div>
          <i class='bx bx-cart cart three' ></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total G 02 Staff Members</div>
            <div class="number"><%
                String G2empcount=obje.G2empcount();
                out.print(G2empcount);
                %></div>
            
          </div>
          <i class='bx bxs-cart-download cart four' ></i>
        </div>
      </div>


            
      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Reservation Ticket Details</div>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
          <%
              
     
        out.println("<br>");  
          
        List<model.ticketidgenbean> list=model.dbconnect.getAllticketdetails();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Ticket ID</th><th>Flight ID</th><th>User Name</th>");  
        for(model.ticketidgenbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getticketid()+"</td><td>"+"&nbsp"+e.getflightid()+"</td><td>"+"&nbsp "+e.getuname()+"</td>  </tr>");  
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
