*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser  ${SiteUrl}  ${Browser}
    Maximize Browser Window

All Sleep 1s
     Set Selenium Speed  1s

Enter create acount google
    [Arguments]  ${CreateAccount}
    Input Text  ${txt_search}  ${CreateAccount}

Click result search
    Click Element  ${ElementResult}

Click sign in
    Click Element  ${SignIn}

Click tao tai khoan
    Click Element  ${TaoTaiKhoan}

Click cho ban than toi
    Click Element  ${ChoBanThanToi}

Input Ho
    [Arguments]  ${InputHo}
    Input Text  ${txt_lastName}  ${InputHo}

Input Ten
    [Arguments]  ${InputTen}
    Input Text  ${txt_firstName}  ${InputTen}

Input UserName
    [Arguments]  ${InputUserName}
    Input Text  ${txt_Username}  ${InputUserName}

Input Password
    [Arguments]  ${InputPW}
    Input Text  ${txt_password}  ${InputPW}

Input ConfirmPW
    [Arguments]  ${InputCPW}
    Input Text  ${txt_ConfirmPassword}  ${InputCPW}

Click IConSPW
    Click Element  ${IconSPW}

Click Button next
    Click Button  ${btn_nextpage}

Back to page
    Go Back

Click Login
    Click Element  ${dangnhap}

Input Email
    [Arguments]  ${InputEmail}
    Input Text  ${txt_email}  ${InputEmail}

Click Button next login
    Click Button  ${btn_nextpagelogin}

Input Password login
    [Arguments]  ${InputPWLogin}
    Input Text  ${txt_PWlogin}  ${InputPWLogin}

Click Button Login
    Click Button  ${btn_nextlogin}

Close my Browsers
    Close All Browsers
