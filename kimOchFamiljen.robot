#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     bla

*** Test Cases ***