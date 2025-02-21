#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}
Test Teardown    Close Browser
Documentation     Test designed for the persona Kim and his family. 

*** Test Cases ***


Buying Entrance Ticket For Two Adults And Two Children
    [Tags]    Alma & Therese    refaktorerat_Alma    refaktorerat_Therese
    [Documentation]    Given that Kim is on the website for juraStina-Kalle, 
    ...                When he is booking 2 VIP-tickets for 2 adults and 2 VIP-tickets for 2 children, 
    ...                Then he should be able to proceed to checkout and pay for his tickets. 
    Given User Is Logged In On The Website
    When User Adds Two Adult Vip Tickets
    And User Adds Two Child Vip Tickets
    Then User Proceeds To Checkout

    

Book Safari Tour On The Weekend
    [Tags]    Therese & Alma, refaktorerat_ Alma    refaktorerat_Therese    refaktorerat_ Kotaiba    
    [Documentation]    Given that Kim has registered an account and booked VIP-entrance tickets, 
    ...                When he choose safari-dates, 
    ...                Then he should be able to book safari on the weekends specifically tours that get close to the dinasours.
    Given User Is logged In On The Website
    And User Has Bought Vip Tickets
    Then User Can Book Safari Tours
  


Book Safari Tour With Date That Has Passed
   [Tags]   Kotaiba, refaktorerat_ Alma    refaktorerat_ Therese    refaktorerat_ Kotaiba
   [Documentation]   Given that Kim is trying to book a date for his safari tour, 
   ...               When he is trying to book a date that has already passed, 
   ...               Then he should get an error message.

   Given User Is logged In On The Website
   And User Has Bought Vip Tickets
   Then User Can Not Book A Safari With A Passed Date

   
  




