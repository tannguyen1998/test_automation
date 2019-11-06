*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   http://demo.automationtesting.in/Windows.html

*** Test Cases ***
testing framesch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    testspeedtests

#testing framesff
     #Open Browser  ${URL}  ${Browserff}
     #Maximize Browser Window
     #testspeedtests

#testing framesie
     #Open Browser  ${URL}  ${Browserie}
     #Maximize Browser Window
     #testspeedtests

    Sleep  2s
    Close All Browsers
*** Keywords ***
TestSpeedTests
    Set Selenium Speed  1seconds


