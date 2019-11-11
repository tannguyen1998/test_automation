*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeyWords.robot

*** Variables ***
${Browser}  ie
${SiteUrl}  http://newtours.demoaut.com/
${User}  tannguyen
${Password}  tannguyen@123


*** Test Cases ***
LoginTest
    Open my Browser  ${SiteUrl}  ${Browser}
    Set Selenium Speed  1s
    Enter UserName  ${User}
    Enter Password  ${Password}
    Click SignIn
    Verify Succesfull Login
    Close my Browser