*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}  https://www.google.com/

*** Keywords ***
TestSpeedTests
    Input Text  name:q  create account gmail
    Click Element  xpath://ul[@class='erkvQe']//li[1]//div[1]//div[2]//div[1]//span[1]
    Click Element  xpath://*[@id="rso"]/div[1]/div/div[3]/div/div/div[1]/a/h3
    Click Element  xpath://html/body/div[1]/div[1]/div[2]/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div/div
    Click Element  xpath://*[@id="initialView"]/div[2]/div[3]/div/div/span[1]/div[2]/div
    Input Text  name:lastName  tan
    Input Text  name:firstName  nguyen
    Clear Element Text  name:Username
    Input Text  name:Username  nguyentan07112019
    Input Text  name:Passwd  Q1234567890poiuytrew
    Input Text  name:ConfirmPasswd  Q1234567890poiuytrew
    Click Element  xpath://*[@id="accountDetailsNext"]/span/span
    Sleep  3s






*** Test Cases ***
RegTestch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    Set Selenium Speed  1s
    testspeedtests

Regtestff
    Open Browser  ${URL}  ${Browserff}
    Maximize Browser Window
    testspeedtests

Regtestie
    Open Browser  ${URL}  ${Browserie}
    Maximize Browser Window
    testspeedtests

    Close All Browsers


