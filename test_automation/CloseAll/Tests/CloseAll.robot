*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTestch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
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
*** Keywords ***
TestSpeedTests
    Set Selenium Speed  1seconds
    Select Radio Button  Gender  M

    Input Text  name:FirstName  Tan
    Input Text  name:LastName  Nguyen
    Input Text  name:Email  tan.nguyen@pap-tech.com
    Input Text  name:Password  Tannguyen@122
    Input Text  name:ConfirmPassword  Tannguyen@122
