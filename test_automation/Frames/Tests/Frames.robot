*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://selenium.dev/selenium/docs/api/java/index

*** Test Cases ***
testing framesch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    testspeedtests

testing framesff
     Open Browser  ${URL}  ${Browserff}
     Maximize Browser Window
     testspeedtests
testing framesie
     Open Browser  ${URL}  ${Browserie}
     Maximize Browser Window
     testspeedtests

    Sleep  2s
    Close All Browsers
*** Keywords ***
TestSpeedTests
    Set Selenium Speed  1seconds
    Select frame   packageListFrame
    Click link  org.openqa.selenium
    Unselect frame
    Sleep  2s

    Select frame  packageFrame
    Click link  WebDriver.Window
    Unselect frame
    Sleep  2s

    Select frame  classFrame
    Click link  Help
    Unselect frame

    Select frame  classFrame
    Click link  Index
    Unselect frame

