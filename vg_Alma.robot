*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    vg_Keywords_Alma.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation    Tests for extra features of jurasStina-Kalle Park website


*** Test Cases ***
#Features of registration
Register Account With Atleast 8 Characters In Password
    [Tags]    Alma 
    [Documentation]    Given that the user is on the website,
    ...                When they are trying to register an account with less than 8 characters,
    ...                Then they should get an error message.

    Click Register Link
    Type In Username Register     testing
    Type In Password Register    1234567  
    Sleep    5
    Sumbit Register Button
    Sleep    5

Register Account With Unique Username
    [Tags]    Alma 
    [Documentation]    Given that the user is on the website,
    ...                When they are trying to register a username that already exists,
    ...                Then they should get an error message.

    Click Register Link
    Type In Username Register     testing
    Type In Password Register    12345678  
    Sleep    5
    Sumbit Register Button
    Sleep    5
    Click Register Link
    Type In Username Register     testing
    Type In Password Register    12345678  
    Sleep    5
    Sumbit Register Button
    Sleep    5
    


#Features of booking tickets
Booking A Ticket Without Being Logged In
    [Tags]    Alma
    [Documentation]    Given that the user is on the website, 
    ...                When they are trying to add an entrance ticket to cart, 
    ...                Then they should get an error message, that they must first be logged in. 

    Click Buy Tickets Link
    Sleep    5
    Click Add To Cart
    Sleep    5



Booking A Ticket As A Senior
    [Tags]    Alma 
    [Documentation]    Given that the user is on the website and logged in, 
    ...                When they are are buying a ticket as a Senior, 
    ...                Then they should be able to proceed to checkout. 

    Click Register Link
    Type In Username Register     testing
    Type In Password Register    12345678  
    Sleep    5
    Sumbit Register Button
    Sleep    5
    Type In Username Login        testing
    Type In Password Login       12345678
    Click Buy Tickets Link
    Click Ticket Type
    Choose Senior
    Sleep    5
    Click Add To Cart
    Handle Alert