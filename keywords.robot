*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${url}    ${browser}    
    Open Browser    ${url}    ${browser}    
    

Click Login Link
    Click Element    xpath = //*[@id='login-nav']/a

Type In Username
    [Arguments]    ${username}
    Input Text    xpath=//*[@id='login-username']    ${username}

Type In Password
    [Arguments]    ${password}    
    Input Text    xpath=//*[@id='login-password']    ${password}       

Submit Credentials
    Click Button    xpath=//*[@id='login-form']/button