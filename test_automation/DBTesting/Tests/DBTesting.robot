*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login


#robot -d result tests/DDT1.robot
*** Test Cases ***
Right User Empty Pass  admin@yourstore.com  ${EMPTY}
Right User Wrong Pass  admin@yourstore.com  xyz
Wrong User Right Pass  adm@yourstore.com  admin
Wrong User Empty Pass  adm@yourstore.com  ${EMPTY}
Wrong User Wrong Pass  adm@yourstore.com  xyz

*** Keywords ***
Invalid Login
    [Arguments]  ${Username}  ${Password}
    Input Username  ${Username}
    Input Password  ${Password}
    Click Login Button
    Error Message Should Be Visible