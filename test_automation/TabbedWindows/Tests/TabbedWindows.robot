*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   http://demo.automationtesting.in/Windows.html


*** Keywords ***
TestSpeedTests
    Set Selenium Speed  1seconds
    Click Element  xpath://*[@id="Tabbed"]/a/button
    Select window  title=Sakinalium | Home
    Click Element  xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a



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
    #Close Browser
    Close All Browsers
