*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://swisnl.github.io/jQuery-contextMenu/demo.html


*** Keywords ***
TestSpeedTests
    #right click
    Open Context Menu  xpath://span[@class='context-menu-one btn btn-neutral']

    #double click
    Go To  http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element  xpath://button[contains(text(),'Copy Text')]

    #drag and drop
    Go To  http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop  id:box3  id:box103
    Drag And Drop  id:box5  id:box105
    Drag And Drop  id:box6  id:box106
    Drag And Drop  id:box7  id:box107
    Drag And Drop  id:box1  id:box101
    Drag And Drop  id:box2  id:box102
    Drag And Drop  id:box4  id:box104


*** Test Cases ***
MouseActionsch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    Set Selenium Speed  1s
    testspeedtests

#MouseActionsff
     #Open Browser  ${URL}  ${Browserff}
     #Maximize Browser Window
     #testspeedtests

#MouseActionsie
     #Open Browser  ${URL}  ${Browserie}
     #Maximize Browser Window
     #testspeedtests


    #Close Browser
    Close All Browsers
