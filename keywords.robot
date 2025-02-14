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



#testfall för att lägga till 2 biljetter för vuxna och 2 för barn  
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

Click Cart Link
    Click Element    //*[@id="cart-nav"]/a

Click Proceed To Checkout    
    Click Element    //*[@id="checkout-button"]
  

Choose Regular Ticket
    Click Element   //*[@id="ticket-category"]/option[1] 


    


#Book Safari Keywords
Click Book Safaris Link
    Click Element    //*[@id="safari-nav"]/a

Click Select Safari Date
    [Arguments]    ${chooseDate}
    Input Text   //*[@id="safari-date"]    ${chooseDate} 



#kanske ändra denna? kankse inte såhär man skriver det
Select Safari Type T-rex Rubmle 
    Click Element    //*[@id="safari-type"]/option[2]

Select Safari Type Herbivore 
    Click Element    //*[@id="safari-type"]/option[1] 

    
Click Add To Cart Safari
    Click Element    //*[@id="safari-form"]/button

