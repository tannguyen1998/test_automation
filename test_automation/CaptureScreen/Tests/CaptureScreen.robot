*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://opensource-demo.orangehrmlive.com/


*** Keywords ***
TestSpeedTests
    Input Text  id:txtUsername  Admin
    Input Text  id:txtPassword  admin123
    #Click element  xpath://*[@id="btnLogin"]

    Capture Element Screenshot  xpath://*[@id="divLogo"]/img  C:/development/test_automation/CaptureScreen/image/logo.png
    Capture Page Screenshot  C:/development/test_automation/CaptureScreen/image/LoginTC.png

    #Capture Element Screenshot  xpath://*[@id="divLogo"]/img  logo.png
    #Capture Page Screenshot  LoginTC.png


*** Test Cases ***
LoginTCch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    Set Selenium Speed  2s
    testspeedtests

#LoginTCff
     #Open Browser  ${URL}  ${Browserff}
     #Maximize Browser Window
     #testspeedtests

#LoginTCie
     #Open Browser  ${URL}  ${Browserie}
     #Maximize Browser Window
     #testspeedtests


    #Close Browser
    Close All Browsers
