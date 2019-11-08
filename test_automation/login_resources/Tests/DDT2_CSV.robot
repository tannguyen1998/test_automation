*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../Data_test/LoginData.csv

Suite Setup  Open My Browser
Suite Teardown  Close Browser
Test Template  Invalid login

#robot -d result tests/DDT2_CSV.robot
*** Test Cases ***
LoginTestWithCSV using ${Username} and ${Password}


*** Keywords ***
Invalid login
    [Arguments]  ${Username}  ${Password}
    Input Username  ${Username}
    Input Password  ${Password}
    Click Login Button
    Error Message Should Be Visible
