*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#xpath=//cui=input[@option='email']/div/input
${SIGN_IN_EMAIL} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[2]/li[1]/div/cars-login-form/div/div[3]/form/input[1]

#xpath=//cui-input[@option='loginPassword']/div/input
${SIGN_IN_PASSWORD} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[2]/li[1]/div/cars-login-form/div/div[3]/form/input[2]

#xpath=//button[@name='&lid=Log In']
${LOGIN_SUBMIT_BUTTON} =  xpath=/html/body/div[2]/section/cars-profiles-lsp/cui-tabs/div/ul[2]/li[1]/div/cars-login-form/div/div[3]/form/button


*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN-IN_PASSWORD}