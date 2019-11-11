*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser  ${SiteUrl}  ${Browser}
    Maximize Browser Window

All Sleep 1s
     Set Selenium Speed  1s

Click Register Link
    Click Link  ${link_Reg}

Enter FirstName
    [Arguments]  ${firstName}
    Input Text  ${txt_firstName}  ${firstName}

Enter LastName
    [Arguments]  ${lastName}
    Input Text  ${txt_lastName}  ${lastName}

Enter Phone
    [Arguments]  ${phone}
    Input Text  ${txt_phone}  ${phone}

Enter Email
    [Arguments]  ${email}
    Input Text  ${txt_email}  ${email}

Enter Address1
    [Arguments]  ${add1}
    Input Text  ${txt_add1}  ${add1}

Enter Address2
    [Arguments]  ${add2}
    Input Text  ${txt_add2}  ${add2}

Enter city
    [Arguments]  ${city}
    Input Text  ${txt_city}  ${city}

Enter State
    [Arguments]  ${state}
    Input Text  ${txt_state}  ${state}

Enter Postal Code
    [Arguments]  ${postal code}
    Input Text  ${txt_postCode}  ${postal code}

Select Country
    [Arguments]  ${country}
    Select From List by label  ${drp_country}  ${country}

Enter User Name
    [Arguments]  ${UserName}
    Input Text  ${txt_userName}  ${UserName}

Enter Password
    [Arguments]  ${Password}
    Input Text  ${txt_Password}  ${Password}

Enter Confirm Password
    [Arguments]  ${ConfirmPassword}
    Input Text  ${txt_confirmPassword}  ${ConfirmPassword}

Click Submit
    Click Button  ${btn_submit}

Verify Succesful Registration
    Page should contain  Thank you for registering

Close my Browsers
    Close All Browsers
