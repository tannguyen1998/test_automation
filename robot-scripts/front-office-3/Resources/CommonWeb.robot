*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    #maximize browser window

End Web Test
    close all browsers