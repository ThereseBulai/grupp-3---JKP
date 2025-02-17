#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     Test for Register and Login function for both valid and invalid scenarios that apply for both personas. 



*** Test Cases ***

Register New Account Valid Login 
    [Tags]    Alma    refaktorera_Therese
    [Documentation]     Given User is on the registration page
    ...                 When User enters a valid username and password
    ...                 And submits the registration form
    ...                 Then the account should be created successfully
    ...                 And User should be able to log in with the registered credentials
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
   [Documentation]     Given User is on the login page 
   ...                 When Usser enters an unregistered username and password And attempts to log in 
   ...                 Then User should see an error message indicating invalid credentials
   ...                  And should not be granted access to the account   
   Click Login Link 
   Type In Username Login   wrong_user
   Type In Password Login   wrong_pass
   Submit Credentials
   Verify Login Failed       



Register New Account Log In With Invalid Username
    [Tags]    Theres & Kotaiba
    [Documentation]    Given that the user is on the webpage
    ...                When the user has registered a new account
    ...                And writes the incorrect username
    ...                Then the user should be presented with a message that they need to write the correct username
    Click Register Link
    Type In Username Register   test
    Type In Password Register    test123456789   
    Sumbit Register Button
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test123456789
    Submit Credentials
    Verify Login Failed


 New Account Log In With Invalid Password
    [Tags]    Therese & Kotaiba
    [Documentation]    Given User is on the login page 
   ...                 When User enters an Invalid Password And attempts to log in 
   ...                 Then User should see an error message indicating invalid credentials
   ...                 And should not be granted access to the account
    Click Register Link
    Type In Username Register   test123
    Type In Password Register    test123456789   
    Sumbit Register Button
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test
    Submit Credentials     
    Verify Login Failed



