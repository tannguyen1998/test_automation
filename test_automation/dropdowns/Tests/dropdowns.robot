*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

    Select From List By Label  continents  Antartica
    Sleep  2s
    Select From List By index  continents  5
    Sleep  2s
    #list box
    Select From List By Label  selenium_commands  Navigation Commands
    Select From List By Label   selenium_commands  Wait Commands
    Sleep  2s
    Unselect From List By Label  selenium_commands  Navigation Commands
    Sleep  2s
    Close Browser
*** Keywords ***

