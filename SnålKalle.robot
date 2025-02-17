#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     This file includes test for the persona Snåla-Kalle

*** Test Cases ***

Check Price For Entrace Ticket For A New User
    [Tags]    Therese    refaktorerat_Alma
    [Documentation]    Given that Snåla-Kalle has registerd a new account, is logged in and is on the booking page
                ...    When Snåla-Kalle selects 1 Adult ticket and proceed to checkout
                ...    Then Snåla-Kalle see that they don't get a discount
                ...    And Snåla-Kalle removes the ticket from the cart. 
    
    Click Register Link
    Type In Username Register     Ståla-Nalle
    Type In Password Register    snålareänsnålast    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   Ståla-Nalle
    Type In Password Login   snålareänsnålast    
    Submit Credentials
    Sleep    2

    Click Buy Tickets Link
    Click Ticket Category
    Choose Regular Ticket
    Click Quantity Link    1
    Click Add To Cart
    Handle Alert
    
    Click Cart Link
    Click Remove Ticket



