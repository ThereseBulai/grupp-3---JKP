*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot

*** Keywords ***
Choose VIP Ticket
      Click Element    //*[@id="ticket-category"]/option[2]


Click Ticket Type
    Click Element    //*[@id="ticket-type"]
    
Choose Child
    Click Element    //*[@id="ticket-type"]/option[2]

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


#New keyword for Give, When, Then
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

User Has Bought Vip Tickets
    User Adds Two Adult Vip Tickets
    User Adds Two Child Vip Tickets

User Can Book Safari Tours
    Click Book Safaris Link    
    Click Select Safari Date    002025-04-26
    Select Safari Type Extreme Thrill Pack
    Sleep    5
    Click Add To Cart Safari
    Handle Alert
    
    Click Select Safari Date    002025-04-26
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