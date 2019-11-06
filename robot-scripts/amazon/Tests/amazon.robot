*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

#  Copy/paste the line below into the Termial to run the script
#  robot -d results tests/amazon.robot
*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  smoke

    Open Browser  http://www.amazon.com  chrome
    Sleep  3s
    Close Browser

*** Keywords ***
