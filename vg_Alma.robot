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

    Given User Is On The Website And On The Register Link 
    When User Tries To Create An Account With Less Than Eight Characters
    Then User Should Get An Error Message

Register Account With Unique Username
    [Tags]    Alma 
    [Documentation]    Given that the user is on the website,
    ...                When they are trying to register a username that already exists,
    ...                Then they should get an error message.

    Given User Is On The Website And Has Created An Account
    When User Tries To Create New Account With Same Username
    Then User Should Get An Error Message

#Features of booking tickets
Booking A Ticket Without Being Logged In
    [Tags]    Alma
    [Documentation]    Given that the user is on the website, 
    ...                When they are trying to add an entrance ticket to cart, 
    ...                Then they should get an error message, that they must first be logged in. 

    Given User Is On The Website And Clicks The Buy Tickets Link
    When User Add A Ticket To Cart
    Then User Should Get An Error Message



Booking A Ticket As A Senior
    [Tags]    Alma 
    [Documentation]    Given that the user is on the website and logged in, 
    ...                When they are are buying a ticket as a Senior, 
    ...                Then they should be able to proceed to checkout. 

    When User Is On The Website And Has Created An Account
    When User Click The Buy Tickets Link
    And User Choose Senior Ticket
    Then User Should Be Able To Proceed To Checkout
