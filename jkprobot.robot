#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser



*** Test Cases ***

Register New Account Valid Login Succesful
    [Tags]    Alma    refaktorera_Therese
    #Tänkte att man måste registerar sig innan man kan logga in
    Click Register Link
    Type In Username Register     test
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test
    Type In Password Login   test123456789    
    Submit Credentials
    [Teardown]    Close Browser


No Registration Invalid Login Unsuccessful 
   [Tags]   Kotaiba    
   Click Login Link 
   
   Type In Username Login   wrong_user
   Type In Password Login   wrong_pass
   Submit Credentials
   Verify Login Failed
   [Teardown]   Close Browser



Register Sucessful Invalid Username
    [Tags]    Therese/Kotaiba
    Click Register Link
    Type In Username Register   test
    Type In Password Register    test123456789   
    Sumbit Register Button
    # Username Ska ha samma användarenamn står det 
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test123456789
    Submit Credentials
    Verify Login Failed
    [Teardown]    Close Browser


Register Sucessful Invalid Password
    [Tags]    Therese/Kotaiba
    Click Register Link
    Type In Username Register   test123
    Type In Password Register    test123456789   
    Sumbit Register Button
    # Username Ska ha samma användarenamn står det 
    Click Login Link
    Type In Username Login    test123
    Type In Password Login    test
    Submit Credentials
    Verify Login Failed
    [Teardown]    Close Browser




