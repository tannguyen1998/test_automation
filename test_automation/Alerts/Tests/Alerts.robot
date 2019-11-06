*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}  http://testautomationpractice.blogspot.com/

*** Test Cases ***
HandlingAlertsch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    testspeedtests

HandlingAlertsff
    Open Browser  ${URL}  ${Browserff}
    Maximize Browser Window
    testspeedtests
HandlingAlertsie
    Open Browser  ${URL}  ${Browserie}
    Maximize Browser Window
    testspeedtests

    Close All Browsers
*** Keywords ***
TestSpeedTests
    Set Selenium Speed  1seconds
    Click Element  xpath://*[@id="HTML9"]/div[1]/button  #open alert
    Sleep  3s
    handle alert  accept  #xac nhan alert
    #handle alert  dismiss  #huy bo alert
    #handle alert  leave  #giu nguyen alert
    #alert should be present  Press a button!  #xac nhan alert
    #alert should not be present  Press a button!  #huy bo alert nhung se fail