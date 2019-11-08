*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://newtours.demoaut.com/
${Browser}  chrome

*** Keywords ***
TestSpeedTests
    ${AllLinksCount}=  get element count  xpath://a   #dem cac phan tu chua link
    Log to console  ${AllLinksCount}   #show so luong da count

    @{LinkItems}  create list   #khai bao 1 bien

    : FOR  ${i}  IN RANGE  1  ${AllLinksCount}+1    #cho bien i vao vi tri 1
    \  ${linkText}=  get text  Xpath:(//a)[${i}]    #linktext se lay duoc cac text cua link
    \  Log To Console  ${LinkText}   #show cac text do ra man hinh

*** Test Cases ***
LoginTCch
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2s
    testspeedtests

    Close All Browsers



