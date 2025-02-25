
*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    

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
Sumbit Register Button
    Click Element    //*[@id="register-form"]/button

Click Register Link
    Click Element    //*[@id="register-nav"]/a

Buy Ticket
    Click Element    xpath=//button[@id="buy-ticket"]

Click Add To Cart
    Click Element    //*[@id="ticket-form"]/button

Proceed To Checkout
    Click Element    xpath=//button[@id="checkout"]

Verify Purchase Successful
    Element Should Be Visible    xpath=//div[@id="success-message]

Click Ticket Category
    Click Element    //*[@id="ticket-category"]

Click Buy Tickets Link
    Click Element    //*[@id="tickets-nav"]/a

Choose Regular Ticket
      Click Element    //*[@id="ticket-category"]/option[1]

Click Quantity Link
    [Arguments]    ${numberOfTickets}  
    Input Text    //*[@id="ticket-quantity"]    ${numberOfTickets}
    
   
Verify Prices Listed Correctly
    [Arguments]    ${expected_price}
    Get Text    xpath=//*[@id="cart-total"] 
    
    

Choose VIP Ticket 
   Click Element   xpath=//*[@id="ticket-category"]/option [2]
Submit Credentials
    Click Button    xpath=//*[@id='login-form']/button

Choose Adult
    Click Element    //*[@id="ticket-type"]/option[1]
Choose Child
    Click Element    //*[@id="ticket-type"]/option[2]

Choose Senior
    Click Element    //*[@id="ticket-type"]/option[3]

Click Cart Link
   Click Element    //*[@id="cart-nav"]
   Wait Until Element Is Visible   //*[@id="cart-nav"]

Click Remove Ticket
    Click Element    //*[@id="cart-details"]/ul/li[1]/button

Verify Cart Is Empty
   Click Element   xpath=//*[@id="cart-details"]

Verify Cart Total 
   Click Element   xpath=//*[@id="cart-total"]




User Is Loged In and trying to buy ticket    
    Click Register Link
    Type In Username Register     Kotaiba
    Type In Password Register     Test123456789    
    Sumbit Register Button

    Click Login Link 
    Type In Username Login   Kotaiba
    Type In Password Login   Test123456789    
    Submit Credentials
    Sleep    2
User is trying to buy ticket
    Click Buy Tickets Link
    Choose Adult
    Choose Regular Ticket 
    Click Quantity Link    1
    Click Add To Cart
    Handle Alert
User should be able to see ticket cost before checkout
    Click Cart Link
    Verify Prices Listed Correctly    expected_price= $50


User Is Loged In And Puts A Ticket In Shopping Cart
    Click Register Link
    Type In Username Register     Kotaiba2025
    Type In Password Register     Test1234    
    Sumbit Register Button

    Click Login Link 
    Type In Username Login   Kotaiba2025
    Type In Password Login   Test1234   
    Submit Credentials
    Sleep    2
    Click Buy Tickets Link
    Choose Adult
    Choose Regular Ticket 
    Click Quantity Link    1
    Click Add To Cart
    Handle Alert    

User is trying to remove ticket from the shopping cart
   Click Cart Link
   Click Remove Ticket
The ticket should be removed from the shopping cart
   Verify Cart Is Empty   


User Is Loged in 
    Click Register Link
    Type In Username Register     Kotaiba_VIP
    Type In Password Register     Test1234    
    Sumbit Register Button

    Click Login Link 
    Type In Username Login   Kotaiba_VIP
    Type In Password Login   Test1234   
    Submit Credentials
User Clicks Buy Tickets Link 
    Click Buy Tickets Link
User Should Be Able To Select Ticket Category
   Choose VIP Ticket
   Choose Regular Ticket
   
User Is logged In
    Click Register Link
    Type In Username Register     KotaibaTest
    Type In Password Register     Test1014   
    Sumbit Register Button

    Click Login Link 
    Type In Username Login   Kotaiba_VIP
    Type In Password Login   Test1014 
    Submit Credentials
User Click Buy Tickets Link
   Click Buy Tickets Link 
User Should Be Able To Select Ticket Types
   Choose Adult
   Choose Child
   Choose Senior
   




   