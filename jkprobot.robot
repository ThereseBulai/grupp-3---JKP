#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     ${title}
Test Teardown    Close Browser

*** Test Cases ***

Valid Login Succesful
    [Tags]    Alma
    Open browser To Home Page
    Click Login Link
    Type In Username    test
    Type In Password    test
    Submit Credentials
    [Teardown]    Close Browser


