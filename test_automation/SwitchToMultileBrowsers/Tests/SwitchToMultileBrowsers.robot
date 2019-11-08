*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://www.google.com/


*** Keywords ***
TestSpeedTests
    Set Selenium Speed  2seconds
    Open Browser  https://www.bing.com/  ${Browserch}
    Maximize Browser Window

    Switch Browser  1
    ${title1}=  get title
    Log To Console  ${title1}

    Switch Browser  2
    ${title2}=  get title
    Log To Console  ${title2}

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


    #Close Browser
    Close All Browsers
