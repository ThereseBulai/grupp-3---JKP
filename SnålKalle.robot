#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     bla

*** Test Cases ***

Buying Entrace Ticket For One Adult
    [Tags]    Therese
    [Documentation]    As a customer, Snåla-Kalle wants to buy the cheapest ticket.
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
    Click Proceed To Checkout
