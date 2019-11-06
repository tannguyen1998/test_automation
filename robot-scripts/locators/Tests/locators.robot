*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

#  Copy/paste the line below into the Termial to run the script
#  robot -d results tests/locators.robot
*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com  chrome
    Sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    #Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Sleep  3s
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/span/div/div/div[2]/div[3]/div/div/h2/a
    Sleep  3s
    Click Link  xpath=//*[@id="nav-logo"]/a
    Sleep  3s
    Click image  Cellphones
    Sleep  3s
    Close Browser

*** Keywords ***
