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
    [Teardown]    Close Browser



*** Keywords ***
Open Browser To Home Page
    Open Browser    ${Home-Url}    ${Browser}