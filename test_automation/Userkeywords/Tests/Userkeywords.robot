*** Setting ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
*** Variables ***
${Browserch}  chrome
${URL}   http://newtours.demoaut.com/

*** Test Cases ***
TC1
    ${PageTitle}=  TestSpeedTests  ${URL}  ${Browserch}
    Log To Console  ${PageTitle}
    Log  ${PageTitle}
    Input Text  name:userName  tan.nguyen@pap-tech.com
    Input Text  name:password  tannguyen@12

    Sleep  2s
    Close All Browsers
