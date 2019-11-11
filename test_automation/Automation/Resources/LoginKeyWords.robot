*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser  ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]  ${UserName}
    Input Text  ${txt_loginUserName}  ${UserName}

Enter Password
    [Arguments]  ${Password}
    Input Text  ${txt_loginPassword}  ${Password}

Click SignIn
    Click Button  ${btn_signIn}

Verify Succesfull Login
    Title Should Be  Find a Flight: Mercury Tours:

Close my Browser
    Close All Browsers