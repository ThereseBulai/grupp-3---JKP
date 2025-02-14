#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     Test desinged for the persona Kim and his family. 

*** Test Cases ***


Buying Entrance Ticket For Two Adults And Two Children
    [Tags]    Alma & Therese
    [Documentation]    As a customer, Kim wants to be able to buy tickets for his entire family.
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    2
    
    Click Buy Tickets Link
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Click Cart Link
    Click Proceed To Checkout
    



Book Safari Tour
    [Tags]    Therese & Alma
    [Documentation]    As a customer, Kim wants to be able to book a safari tour for his family. 
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    5

    Click Buy Tickets Link
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert


    Click Book Safaris Link    
    Click Select Safari Date    2025-02-22
    Select Safari Type T-rex Rubmle
    Sleep    5
    Click Add To Cart Safari
    Handle Alert

    

    Click Cart Link
    Click Proceed To Checkout


Book Safari Tour With Date That Has Passed
   [Tags]   Kotaiba
   [Documentation]   Controll that you can not book safari for a date that has already passed

   Click Register Link 
   Type In Username Register    test3
   Type In Password Register    test123456789
   Sumbit Register Button

   Click Login Link
   Type In Username Login   test3
   Type In Password Login   test123456789
   Submit Credentials
   Sleep   5

   Click Book Safaris Link 
   Click Select Safari Date   2025-01-01  #Datum har redan passerat 
   Select Safari Type T-rex Rubmle
   Sleep   5
   Click Add To Cart Safari
   
  




