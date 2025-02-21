#Alma, Therese & Kotaiba, Grupp 3
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    
    
#Login keywords
Click Login Link
    Click Element    xpath=//*[@id='login-nav']/a

Type In Username Login
    [Arguments]    ${username}
    Input Text    xpath=//*[@id='login-username']    ${username}

Type In Password Login
    [Arguments]    ${password}    
    Input Text    xpath=//*[@id='login-password']    ${password}       

Submit Credentials
    Click Button    xpath=//*[@id='login-form']/button

#Verify keywords
Verify Login Failed
   Wait Until Element Is Visible    xpath=//*[@id="login-message"]    10s
   Element Should Be Visible  xpath=//*[@id="login-message"]

#Register keywords
 Type In Username Register
    [Arguments]    ${username}
    Input Text    //*[@id="reg-username"]    ${username}

 
Type In Password Register
     [Arguments]    ${password}    
    Input Text    //*[@id="reg-password"]    ${password} 

Click Register Link
    Click Element    //*[@id="register-nav"]/a

Sumbit Register Button
    Click Element    //*[@id="register-form"]/button



#Keywords for bying tickets
Click Buy Tickets Link
    Click Element    //*[@id="tickets-nav"]/a

Click Ticket Category
    Click Element    //*[@id="ticket-category"]
    
Choose VIP Ticket
      Click Element    //*[@id="ticket-category"]/option[2]

Click Quantity Link
    [Arguments]    ${numberOfTickets}  
    Input Text    //*[@id="ticket-quantity"]    ${numberOfTickets}

Click Add To Cart
    Click Element    //*[@id="ticket-form"]/button

Click Ticket Type
    Click Element    //*[@id="ticket-type"]
    
Choose Child
    Click Element    //*[@id="ticket-type"]/option[2]

Choose Regular Ticket
    Click Element   //*[@id="ticket-category"]/option[1] 

#Keywords for checkout
Click Cart Link
    Click Element    //*[@id="cart-nav"]/a

Click Proceed To Checkout    
    Click Element    //*[@id="checkout-button"]
    Handle Alert
  

#Book Safari Keywords
Click Book Safaris Link
    Click Element    //*[@id="safari-nav"]

Click Select Safari Date
    [Arguments]    ${chooseDate}
    Input Text   //*[@id="safari-date"]    ${chooseDate} 



#Keywords for different safari types
Select Safari Type T-rex Rubmle 
    Click Element    //*[@id="safari-type"]/option[2]

Select Safari Type Herbivore 
    Click Element    //*[@id="safari-type"]/option[1] 

Select Safari Type Extreme Thrill Pack
    Click Element   //*[@id="safari-type"]/option[4]  

Select Safari Type Herbivore With Feeding
    Click Element    //*[@id="safari-type"]/option[3] 
    
Click Add To Cart Safari
    Click Element    //*[@id="safari-form"]/button
    


Book Safari failed 
   Wait Until Element Contains    xpath=//*[@id="safari-message"]  10s



#Keywords for removing objects in cart
Click Remove Ticket
    Click Element    //*[@id="cart-details"]/ul/li[1]/button






#New keywords for Given/When/Then
User Is logged In On The Website
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    2

User Adds Two Adult Vip Tickets
    Click Buy Tickets Link
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

User Adds Two Child Vip Tickets
    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert
   

User Proceeds To Checkout
    Click Cart Link
    Click Proceed To Checkout
    Sleep    5
 

User Has Bought Vip Tickets
    User Adds Two Adult Vip Tickets
    User Adds Two Child Vip Tickets
  

User Can Book Safari Tours
    Click Book Safaris Link    
    Click Select Safari Date    002025-02-22
    Select Safari Type Extreme Thrill Pack
    Sleep    5
    Click Add To Cart Safari
    Handle Alert
    
    Click Select Safari Date    002025-02-22
    Select Safari Type Herbivore With Feeding
    Click Add To Cart Safari
    Handle Alert
    User Proceeds To Checkout
 

User Can Not Book A Safari With A Passed Date
   Click Book Safaris Link 
   Click Select Safari Date   002025-01-01  #Date has already passed
   Select Safari Type T-rex Rubmle
   Sleep   5
   Click Add To Cart Safari
   Sleep    5


User Register New Account Valid Login
    Click Register Link
    Type In Username Register     test
    Type In Password Register    test123456789    


User Enters A Valid Username And Password And Submits The Registration Form
    Sumbit Register Button
    Click Login Link
    Type In Username Login   test
    Type In Password Login   test123456789
       

User Account Should Created Successfully  
    Submit Credentials


User Try To Login Without Register New Account
    Click Login Link 
 

User Enters An Unregistered Username And Password And Attempts To log In 
    Type In Username Login   wrong_user
    Type In Password Login   wrong_pass
    Submit Credentials


User Presented With Error Message 
    Verify Login Failed    


User Has Registered A New Account And Writes The Incorrect Username
    Click Register Link
    Type In Username Register   test
    Type In Password Register    test123456789   
    Sumbit Register Button


User Try To Login In With Invalid Usernamne
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test123456789
    Submit Credentials


User Should Be Presented With A Message That They Need To Write The Correct Username
    Verify Login Failed


User Has Registered A New Account And Writes The Incorrect Password
    Click Register Link
    Type In Username Register   test123
    Type In Password Register    test123456789   
    Sumbit Register Button
    
User Try To Login In With Invalid Password 
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test
    Submit Credentials 


User Should See An Error Message Indicating Invalid Credentials    
    Verify Login Failed


User Snåla-Kalle Register And Log In Under Fake Name
    Click Register Link
    Type In Username Register     StålaNalle
    Type In Password Register    gemigrabattnu    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   StålaNalle
    Type In Password Login   gemigrabattnu    
    Submit Credentials
    Sleep    2



The User Snåla-Kalle Selects One Adult Ticket And Proceed To Checkout
    Click Buy Tickets Link
    Click Ticket Category
    Choose Regular Ticket
    Click Quantity Link    1
    Click Add To Cart
    Handle Alert

Snåla-Kalle Can Not Add Discount And Removes Ticket From The Cart 
    Click Cart Link
    Click Remove Ticket
    Sleep    5

    