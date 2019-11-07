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
    ${loc}=  get location
    Log To Console  ${loc}

    Go To  https://www.bing.com/
    ${loc}=  get location
    Log To Console  ${loc}

    Go Back
    ${loc}=  get location
    Log To Console  ${loc}


*** Test Cases ***
Navigationch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    testspeedtests

#Navigationff
     #Open Browser  ${URL}  ${Browserff}
     #Maximize Browser Window
     #testspeedtests

#Navigationie
     #Open Browser  ${URL}  ${Browserie}
     #Maximize Browser Window
     #testspeedtests


    #Close Browser
    Close All Browsers
