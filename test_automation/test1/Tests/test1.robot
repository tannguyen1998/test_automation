*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://demo.nopcommerce.com

*** Test Cases ***
LoginTestch
    Open Browser  ${URL}  ${Browserch}
    LoginToApplication
    Close Browser
Logintestff
    Open Browser  ${URL}  ${Browserff}
    LoginToApplication
    Close Browser
Logintestie
    Open Browser  ${URL}  ${Browserie}
    LoginToApplication
    Close Browser


*** Keywords ***
LoginToApplication
    Sleep  2s
    Click Link  xpath://html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Sleep  2s
    Input Text  id:Email  tan.nguyen@paptech.com
    Sleep  2s
    Input Text  id:Password  Test@123
    Sleep  2s
    Click Button  xpath://html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/input
    Sleep  2s