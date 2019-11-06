*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login with Many Many Invalid Credentials
    [Arguments]  ${InvalidLoginScanarios}
    :FOR  ${LoginScenario}  IN  @{InvalidLoginScanarios}
    \  SignIn.Navigate To
    \  Attempt Login  ${LoginScenario}
    \  Verify Login Page Error Message  ${LoginScenario}

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  5s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}