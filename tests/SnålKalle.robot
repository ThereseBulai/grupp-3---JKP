#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    ../resources/keywords_files/keywords.robot
Resource    ../resources/keywords_files/keywords_Snålakalle.robot
Variables    ../resources/variables_files/variables.py

Test Setup    Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     This file includes test for the persona Snåla-Kalle

*** Test Cases ***

Check Price For Entrace Ticket For A New User
    [Tags]    Therese    refaktorerat_Alma    refaktorerat_Kotaiba    refaktorerat_Therese
    [Documentation]    Given that Snåla-Kalle has registerd a new account, is logged in and is on the booking page
                ...    When Snåla-Kalle selects 1 Adult ticket and proceed to checkout
                ...    Then Snåla-Kalle see that they don't get a discount
                ...    And Snåla-Kalle removes the ticket from the cart. 
    Given User Snåla-Kalle Register And Log In Under Fake Name
    When The User Snåla-Kalle Selects One Adult Ticket And Proceed To Checkout
    Then Snåla-Kalle Can Not Add Discount And Removes Ticket From The Cart 





    
  



