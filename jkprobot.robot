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

Valid Login Succesful
    [Tags]    Alma  
    Click Login Link
    Type In Username    test
    Type In Password    test    
    Submit Credentials
    [Teardown]    Close Browser


