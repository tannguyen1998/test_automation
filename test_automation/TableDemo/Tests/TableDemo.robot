*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
#${Browserff}  ff
#${Browserie}  ie
${URL}  http://testautomationpractice.blogspot.com/

*** Keywords ***
TestSpeedTests
    ${Rows}=  Get Element Count  xpath://table[@name='BookTable']/tbody/tr              #count rows
    ${Columns}=  Get Element Count  xpath://table[@name='BookTable']/tbody/tr[1]/th     #count columns

    Log To Console  ${Rows}
    Log To Console  ${Columns}

    ${Text}=  Get Text  xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console  ${Text}

    Table Column Should Contain  xpath://table[@name='BookTable']  2  Author
    Table Row Should Contain  xpath://table[@name='BookTable']  4  Learn JS
    Table Cell Should Contain  xpath://table[@name='BookTable']  5  2  Mukesh
    Table Header Should Contain  xpath://table[@name='BookTable']  BookName



*** Test Cases ***
RegTestch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    Set Selenium Speed  1s
    testspeedtests

#Regtestff
    #Open Browser  ${URL}  ${Browserff}
    #Maximize Browser Window
    #testspeedtests

#Regtestie
    #Open Browser  ${URL}  ${Browserie}
    #Maximize Browser Window
    #testspeedtests

    Close All Browsers


