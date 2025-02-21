*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}    
    
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



#Keywords for buying tickets
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
    
Choose Senior
    Click Element    //*[@id="ticket-type"]/option[3]

Choose Regular Ticket
    Click Element   //*[@id="ticket-category"]/option[1] 




#Keywords for checkout
Click Cart Link
    Click Element    //*[@id="cart-nav"]

Click Proceed To Checkout    
    Click Element    //*[@id="checkout-button"]
  


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
  

#Keywords Verify error message
Verify Error Of Booking Safari
    Wait Until Element Is Visible    //*[@id="safari-message"]    10s
    Element Should Be Visible    //*[@id="safari-message"]

Verify Error Of Register
    Wait Until Element Is Visible    //*[@id="register-message"]    10s
    Element Should Be Visible    //*[@id="register-message"]


Verify Successful Registration    
    Wait Until Element Is Visible    //*[@id="register-message"]    10s
    Element Should Be Visible    //*[@id="register-message"]




#New Keywords for Given/When/Then
User Is Logged In
    Click Register Link
    Type In Username Register    Monikaplöjer
    Type In Password Register    slåavmighatten    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   Monikaplöjer
    Type In Password Login   slåavmighatten    
    Submit Credentials
    Sleep    5

User Try To Book Safari Tour Before Buying A Ticket To The Park
    Click Book Safaris Link
    Click Select Safari Date    002025-03-02
    Select Safari Type Herbivore
    Click Add To Cart Safari

User Should Be Presented With Error Message That They Need To Buy Ticket
       Verify Error Of Booking Safari


User Try To Book Safari Tour On The Weekend With A Regular Ticket
    Click Buy Tickets Link
    Click Ticket Category
    Choose Regular Ticket
    Click Quantity Link    1
    Click Add To Cart
    Handle Alert


User Should Be Presented with Error Message That They Need A Vip Ticket
    Click Book Safaris Link
    Click Select Safari Date    002025-03-22
    Select Safari Type Herbivore
    Click Add To Cart Safari
    Verify Error Of Booking Safari
    Sleep    5


User is On The Page To Register
    Click Register Link

User Try To Register New Account And Type in A Password Shorter Than Eight
     Type In Username Register     minstamöjliga
    Type In Password Register    123    
    Sumbit Register Button


User Try To Register New Account And Type in A Password Longer Than Eight
    Type In Username Register     maxa
    Type In Password Register    qwertyuiopåasdfghjklöäzxcvbnmqwrtyuiopqwwertyuiopåasdfghjklöäzvxnvmbnjskdgskgsghsklslhssjdgksjdghksdhjgksjhdgkshgkjshgkshdgjhdsgkhdsgkjshdgkhsdgkhsdgkjhsdgkhsdgkhsdgajfgakjdghkjsdhgksjhgksjghkjsdhgksjhgsghskghskhskfjhjfghkgjhskfjhfkhjhdfkhfdkjghdfkjghdkfgdhfkghdkfgjhdkfghdkfghdkgjh   
    Sumbit Register Button


User Should Be Presented With an Error Message
   Verify Error Of Register
    Sleep    5

User Should Be Presented With Message That It Was Successful
        Verify Successful Registration
        Sleep    5    


User Try To Register New Account And Type in A Password With Different Characters
    Type In Username Register     pajasidan
    Type In Password Register    ~! @#$%^&*_-+=`|:;"'<>,.?/¬¦!hejสวัสดีこんにちは
    Sumbit Register Button

User Is On Buy Tickets On The Website
    Click Buy Tickets Link

User Try To Buy Ticker Without Being Logged In
    Click Ticket Type
    Choose Senior
    Click Ticket Category
    Choose Regular Ticket
    Click Quantity Link    1
    Click Add To Cart


User Should Be Presented With An Error Message That They Need To Be Logged In
    Sleep    5
    Handle Alert