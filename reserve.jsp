<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dbconnect"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="model.cookieverify"%>
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
                                }       }
                                 
                    }
%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Home</title> 
    <link rel="stylesheet" type="text/css" href="reserve.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
 
  </head>
  <body class="u-body u-xl-mode">
    
    <section class="u-align-center u-clearfix u-section-2" id="sec-2c54">
      <div class="u-clearfix u-sheet u-sheet-1">
        
        <div class="u-align-center u-form u-form-1">
          <form action="./book_a_flight" method="POST" class="u-clearfix u-form-spacing-5 u-form-vertical u-inner-form" style="padding: 15px;" source="custom" name="form">
            <div class="u-form-group u-form-radiobutton u-label-top u-form-group-1">
              <div class="u-form-radio-button-wrapper">
                <input type="radio" name="tripmethod" value="Roundtrip">
                <label class="u-label u-label-1" for="radiobutton">Roundtrip</label>
                <br>
                <input type="radio" name="tripmethod" value="One Way">
                <label class="u-label u-label-2" for="radiobutton">One Way</label>
                <br>
              </div>
            </div>
            <div class="u-form-group u-label-top u-form-group-2">
              <label for="text-9df8" class="u-label u-label-3">Full Name with Initials</label>
              <input type="text" placeholder="Enter Full Name" id="text-9df8" name="fullname" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-input-1">
            </div>
            <div class="u-form-group u-label-top u-form-group-3">
              <label for="text-ccb2" class="u-label u-label-4">Passport ID</label>
              <input type="text" placeholder="Enter Passport ID" id="text-ccb2" name="passportid" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="required">
            </div>
            <div class="u-form-email u-form-group u-label-top u-form-group-4">
              <label for="email-b06a" class="u-label u-label-5">Email</label>
              <input type="email" placeholder="Enter a valid email address" id="email-b06a" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="">
            </div>
            <div class="u-form-group u-form-name u-label-top u-form-group-5">
              <label for="name-6797" class="u-label u-label-6">Departure place</label>
              <input type="text" placeholder="Enter Airport" id="name-6797" name="departure" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-input-4" required="">
            </div>
            <div class="u-form-group u-label-top u-form-group-6">
              <label for="email-6797" class="u-label u-label-7">Arrival airport</label>
              <input type="text" placeholder="Enter Airport" id="email-6797" name="arrival" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-input-5" required="required">
            </div>
            <div class="u-form-date u-form-group u-label-top u-form-group-7">
              <label for="text-95df" class="u-label u-label-8">Departure Date</label>
              <input type="date" id="text-95df" name="departuredate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-input-6" required="required">
            </div>
            <div class="u-form-date u-form-group u-label-top u-form-group-8">
              <label for="date-58ba" class="u-label u-label-9">Return Date</label>
              <input type="date" placeholder="MM/DD/YYYY" id="date-58ba" name="returndate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-input-7" required="">
            </div>
            <div class="u-form-group u-form-select u-label-top u-form-group-9">
              <label for="select-8cdf" class="u-label u-label-10">Class Type</label>
              <div class="u-form-select-wrapper">
                <select id="select-8cdf" name="classtype" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-10 u-white" required="required">
                  <option value="First Class">First Class</option>
                  <option value="Business">Business</option>
                  <option value="Premium Economy">Premium Economy</option>
                  <option value="Economy">Economy</option>
                </select>
              </div>
            </div>
            <div class="u-form-group u-form-select u-label-top u-form-group-10">
              <label for="select-96b3" class="u-label u-label-11">Adult(18+)</label>
              
            </div>
            <div class="u-form-group u-form-select u-label-top u-form-group-11">
              <label for="select-83f3" class="u-label u-label-12">Child(17-)</label>
              
            </div>
            
            <div class="u-align-left u-form-group u-form-submit u-label-top u-form-group-13">
              <input input type='submit' value='Reserve seat' class="u-btn u-btn-round u-btn-submit u-button-style u-radius-20">
     
            </div>
            
            
          </form>
     
        </div>
      </div>
    </section>
  </body>
</html>