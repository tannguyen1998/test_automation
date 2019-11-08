*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${LOGIN URL}  https://admin-demo.nopcommerce.com

*** Keywords ***
Open My Browser
    Open Browser  ${LOGIN URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  1s
Close Browsers
    Close All Browsers

Open Login Page
    Go To  ${LOGIN URL}

Input Username
    [Arguments]  ${Username}
    Input Text  id:Email  ${Username}

Input Password
    [Arguments]  ${Password}
    Input Text  id:Password  ${Password}

Click Login Button
    Click Element  xpath://input[@class='button-1 login-button']

Click Logout Link
    Click Link  Logout

Error Message Should Be Visible
    Page should contain  Login was unsuccessful. Please correct the errors and try again.

Dashboard Page Should Be Visible
    Page should contain  Dashboard

