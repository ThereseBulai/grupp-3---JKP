#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    ../resources/keywords_files/keywords.robot
Variables    ../resources/variables_files/variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     Test for Register and Login function for both valid and invalid scenarios that apply for both personas. 



*** Test Cases ***

Register New Account Valid Login 
    [Tags]   new-feature Alma    refaktorerat_Therese    refaktorerat_Alma    refaktorerat_Kotaiba
    [Documentation]     Given User is on the registration page
    ...                 When User enters a valid username and password
    ...                 And submits the registration form
    ...                 Then the account should be created successfully
    ...                 And User should be able to log in with the registered credentials

    Given User Register New Account Valid Login
    When User Enters A Valid Username And Password And Submits The Registration Form
    Then User Account Should Created Successfully


No Registration Of New Account Log in Invalid  
   [Tags]   new-feature Kotaiba    refaktorerat_Therese    refaktorerat_Alma    refaktorerat_Kotaiba
   [Documentation]     Given User is on the login page 
   ...                 When User enters an unregistered username and password And attempts to log in 
   ...                 Then User should see an error message indicating invalid credentials
   ...                 And should not be granted access to the account   
   
   Given User Try To Login Without Register New Account
   When User Enters An Unregistered Username And Password And Attempts To Log In 
   Then User Presented With Error Message    


Register New Account Log In With Invalid Username
    [Tags]    new-feature Therese & Kotaiba    refaktorerat_Alma    refaktorerat_Kotaiba    refaktorerat_Therese
    [Documentation]    Given that the user trying register 
    ...                When the user has registered a new account
    ...                And writes the incorrect username
    ...                Then the user should be presented with a message that they need to write the correct username

    Given User Try To Login In With Invalid Usernamne
    When User Has Registered A New Account And Writes The Incorrect Username
    Then User Should Be Presented With A Message That They Need To Write The Correct Username


 New Account Log In With Invalid Password
    [Tags]    new-feature Therese & Kotaiba    refaktorerat_Alma    refaktorerat_Kotaiba    refaktorerat_Therese    
    [Documentation]    Given User is on the login page 
   ...                 When User enters an Invalid Password And attempts to log in 
   ...                 Then User should see an error message indicating invalid credentials
   ...                 
   Given User Has Registered A New Account And Writes The Incorrect Password
   When User Try To Login In With Invalid Password 
   Then User Should See An Error Message Indicating Invalid Credentials  


