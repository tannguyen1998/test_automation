*** Settings ***
Library  SeleniumLibrary

#  Copy/paste the line below into the Termial to run the script
#  robot -d results tests/Locators.robot
*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.amazon.com

*** Test Cases ***
Should be able to do something
    Open Browser  ${URL}  ${BROWSER}
    Mouse Over  xpath=//*[@id="nav-link-accountList"]/span[2]
    Click Link  default=/gp/registry/wishlist?ie=UTF8&ref_=nav_youraccount_wl&requiresSignIn=1
    Sleep  5s
    Close Browser

*** Keywords ***