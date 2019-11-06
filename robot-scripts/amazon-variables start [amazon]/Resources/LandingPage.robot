*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Conteins  Your amazon.com