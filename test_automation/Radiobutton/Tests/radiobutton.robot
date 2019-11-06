*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing radio buttons and check boxer
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  1seconds
    select radio button  sex  Female
    select radio button  exp  5

    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  BlackTea

    close Browser

*** Keywords ***

