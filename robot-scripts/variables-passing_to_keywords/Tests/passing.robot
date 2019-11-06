*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User can search for products
    @{url_and_browser}=  Set Variable  http://www.amazon.com  chrome


    Begin Web Test  @{url_and_browser}
    #Begin Web Test  http://www.amazon.com  chrome
*** Keywords ***
Begin Web Test
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Sleep  3s
    Close Browser

#Begin Web Test
    #[Arguments]  ${url}  ${browser}
    #Open Browser  ${url}  ${browser}
    #Close Browser


