*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Regis.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://www.google.com/

*** Test Cases ***
RegistrationTest
    Open my Browser  ${SiteUrl}  ${Browser}
    #All Sleep 1s
    Enter create acount google  Create account google
    Click result search
    Click sign in
    Click tao tai khoan
    Click cho ban than toi
    Input Ho                    Nguyen
    Input Ten                   Tan
    Input UserName              nguyenthanhtan09112019@gmail.com
    Input Password              Q1234567890poiuytrew
    Input ConfirmPW             Q1234567890poiuytrew
    Click IConSPW
    Click Button next
    Back to page
    Click Login
    #login
    Input Email                    congtubaclieu011119@gmail.com
    Click Button next login
    Input Password login           Q1234567890poiuytrew
    Click Button Login
    Sleep  3s
    Close my Browsers

