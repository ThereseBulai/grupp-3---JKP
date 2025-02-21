*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}   

Click Login Link
    Click Element    xpath=//*[@id='login-nav']/a

Type In Username Login
    [Arguments]    ${username}
    Input Text    xpath=//*[@id='login-username']    ${username}

Type In Password Login
    [Arguments]    ${password}    
    Input Text    xpath=//*[@id='login-password']    ${password}   

 Type In Username Register
    [Arguments]    ${username}
    Input Text    //*[@id="reg-username"]    ${username}

Type In Password Register
     [Arguments]    ${password}    
    Input Text    //*[@id="reg-password"]    ${password} 

Click Register Link
    Click Element    //*[@id="register-nav"]/a

Submit Register Button
    Click Element    //*[@id="register-form"]/button

Click Buy Tickets Link
    Click Element    //*[@id="tickets-nav"]/a

Click Add To Cart
    Click Element    //*[@id="ticket-form"]/button

Click Ticket Type
    Click Element    //*[@id="ticket-type"]

Choose Senior
    Click Element    //*[@id="ticket-type"]/option[3]

User Is On The Website And On The Register Link
    Click Register Link
User Tries To Create An Account With Less Than Eight Characters
    Type In Username Register     testing
    Type In Password Register    1234567  
    Sleep    5
    Submit Register Button

User Is On The Website And Has Created An Account
    Click Register Link
    Type In Username Register     testing
    Type In Password Register    12345678  
    Sleep    5
    Submit Register Button
    Sleep    5
User Tries To Create New Account With Same Username
    Click Register Link
    Type In Username Register     testing
    Type In Password Register    12345678  
    Sleep    5
    Submit Register Button
User Should Get An Error Message
    Sleep    5
User Is On The Website And Clicks The Buy Tickets Link
    Click Buy Tickets Link
    Sleep    5
User Add A Ticket To Cart
    Click Add To Cart

User Click The Buy Tickets Link
     Click Buy Tickets Link
User Choose Senior Ticket
    Click Ticket Type
    Choose Senior
    Sleep    5
User Should Be Able To Proceed To Checkout
    Click Add To Cart
    Handle Alert
