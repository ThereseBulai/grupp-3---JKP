#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     We are testing the Register and Login function for both valid and invalid scenarios that apply for both personas. 



*** Test Cases ***

Register New Account Valid Login 
    [Tags]    Alma    refaktorera_Therese
    [Documentation]     Register a new account and login sucessfully.
    #Tänkte att man måste registerar sig innan man kan logga in
    Click Register Link
    Type In Username Register     test
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test
    Type In Password Login   test123456789    
    Submit Credentials



No Registration Of New Account Log in Invalid  
   [Tags]   Kotaiba 
   [Documentation]     bla   
   Click Login Link 
   Type In Username Login   wrong_user
   Type In Password Login   wrong_pass
   Submit Credentials
   Verify Login Failed       



Register New Account Log In With Invalid Username
    [Tags]    Therese/Kotaiba
    Click Register Link
    Type In Username Register   test
    Type In Password Register    test123456789   
    Sumbit Register Button
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test123456789
    Submit Credentials
    Verify Login Failed


Register New Account Log In With Invalid Password
    [Tags]    Therese/Kotaiba
    Click Register Link
    Type In Username Register   test123
    Type In Password Register    test123456789   
    Sumbit Register Button
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test
    Submit Credentials
    Verify Login Failed



Buying Entrance Ticket For Two Adults And Two Children
    [Tags]    Alma
    [Documentation]    Test apply for persona Kim and his family for buy tickets.
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
    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart


    Click Cart Link 
    Alert Should Be Present    "Item added to cart!"
    Handle Alert    ACCEPT
    Sleep     5

    Click Proceed To Checkout
    





Book Safari Tour
    [Tags]    Therese
    [Documentation]    As a customer, Kim wants to be able to book a safari tour for his family, because 
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    5

    Click Book Safaris Link
    Click Select Safari Date    2025-02-22
    Select Safari Type
    Sleep    5
    Click Add To Cart Safari

    Click Cart Link
    Sleep    5
    #här ska vi lösa att få bort alerten
    Click Proceed To Checkout






