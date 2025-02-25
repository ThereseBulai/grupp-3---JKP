*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource   vg_keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation    Tests For VG-Delarna Feature 1: Vid bokning går användare igenom en ”Checkout”-process där priser för valda bokningar listas 
...    Feature 2: Det finns biljetter av typerna ”Adult”, ”Child” och ”Senior” samt VIP-biljetter för dubbelt pris


*** Test Cases ***

Check that regular ticket costs 50 dollars when checkout
    [Tags]   Kotaiba
    [Documentation]  Feature 1 : Testfall 1
   Given User Is Loged In and trying to buy ticket 
   When User is trying to buy ticket
   Then User should be able to see ticket cost before checkout


Check that user can remove ticket from cart 
   [Tags]  Kotaiba
   [Documentation]   Feature 1 : Testfall 2
   Given User Is Loged In And Puts A Ticket In Shopping Cart
   When User is trying to remove ticket from the shopping cart
   Then The ticket should be removed from the shopping cart
User Can Select Different Ticket Category 
  [Tags]   Kotaiba
  [Documentation]   Feature 2 : Testfall 1
   Given User Is Loged in
   When User Clicks Buy Tickets Link 
   Then User Should Be Able To Select Ticket Category

User Can Select Different Ticket Type
   [Tags]   Kotaiba
   [Documentation]  Feature 2 : Testfall 2  Testa olika biljett typer
   Given User Is logged In 
   When User Click Buy Tickets Link 
   Then User Should Be Able To Select Ticket Types
   




