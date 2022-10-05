<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        
        <div class="container">
            <div class="box">
     
                <img class="avatar" src="img/staff.login.jpg">
                
                <h2 style="color: white;"><center>Phoenix Airline | USER SIGN IN </h2></center>
               <form action="LoginServlet" method="post">
    <font color="white">
                    <p>UserName</p>
<input type="text" placeholder="Ruwanthi@98" name="email" required>
                    <p>Password</p>
<input type="password" placeholder="......" name="password" required>
                    <input type="submit" value="SIGN UP NOW">
                    <br></br>
                    <a href="#"><font color="white"/> Forget Password?</a><br>
                    <a href="StaffLogin.jsp"><font color="white"/>Create New Account</a>
                </form>
</div>
</div>
</body>
</html>


<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
 Welcome, <%= user.getName() %></h1>
<h3>
Your Account ID: <%= user.getId() %> </h3>
<h3>
Your Email: <%= user.getEmail() %> </h3>
<h3>
Your Password: <%= user.getPassword() %></h3>
<button><a href="LogoutServlet">Log Out</a></button>
    </body>
</html>

HttpSession session = request.getSession();
            session.removeAttribute("logUser");
            response.sendRedirect("index.jsp");

