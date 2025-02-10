#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${Home-Url}   file:///C:/Users/almab/OneDrive/Dokument/CT%20Jurasstina-kalle%20park/grupp-3---JKP/jurastina-alfa/jurap.html
${Browser}    Chrome


*** Test Cases ***
Open Browser To Home Page
    [Tags]    Alma
    Open Browser To Home Page


Valid Login Succesful
    [Tags]    Alma
    Open browser To Home Page
    Click Login Link
    Type In Username    test
    Type In Password    test
    Submit Credentials
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Home Page
    Open Browser    ${Home-Url}    ${Browser}

Click Login Link
    Click Element    xpath =//*[@id='login-nav']/a

Type In Username    
    [Arguments]    ${username}
    Input Text    xpath = //*[@id='login-username']    ${username}
Type In Password
    [Arguments]    ${password}
    Input Text    xpath = //*[@id='login-password']    ${password}

Submit Credentials
    Click Button    xpath = //*[@id='login-form']/button