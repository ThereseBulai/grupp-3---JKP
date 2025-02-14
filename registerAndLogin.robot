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
    [Documentation]     As a customer you need to register a new account and login sucessfully.
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
   [Documentation]     The test covers if a customer try to log in before they have register an account.   
   Click Login Link 
   Type In Username Login   wrong_user
   Type In Password Login   wrong_pass
   Submit Credentials
   Verify Login Failed       



Register New Account Log In With Invalid Username
    [Tags]    Therese/Kotaiba
    [Documentation]    The test covers if a user register a new account and then try to log in with a invalid username.
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
    [Tags]    Therese/Kotaiba
    [Documentation]     The test covers if a user register a new account and then try to log in with a invalid password.    
    Click Register Link
    Type In Username Register   test123
    Type In Password Register    test123456789   
    Sumbit Register Button
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test
    Submit Credentials     
    Verify Login Failed



