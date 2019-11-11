*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Regis.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com

*** Test Cases ***
RegistrationTest
    Open my Browser  ${SiteUrl}  ${Browser}
    #All Sleep 1s
    Click Register Link
    Enter FirstName                 tan
    Enter LastName                  nguyen
    Enter Phone                     0123456789
    Enter Email                     tannguyen@gmail.com
    Enter Address1                  Tran Nguyen Dan
    Enter Address2                  Dong Xuyen
    Enter city                      Long Xuyen
    Enter State                     An Giang
    Enter Postal Code               90000
    Select Country                  VIETNAM
    Enter User Name                 tannguyen
    Enter Password                  tannguyen@123
    Enter Confirm Password          tannguyen@123
    Click Submit
    Verify Succesful Registration
    Close my Browsers
