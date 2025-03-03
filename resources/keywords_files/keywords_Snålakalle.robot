*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot


*** Keywords ***

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


