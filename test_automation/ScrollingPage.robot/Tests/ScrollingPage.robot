*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browserch}  chrome
${Browserff}  ff
${Browserie}  ie
${URL}   https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Keywords ***
TestSpeedTests
    #Execute javascript  window.scrollTo(0,2500)
    Sleep  1S
    #Scroll Element Into View  xpath://table[2]//tbody[1]//tr[103]//td[1]//img[1]
    Execute Javascript  window.scroll(0,document.body.scrollHeight)
    Sleep  2s
    Execute Javascript  window.scroll(0,-document.body.scrollHeight)



*** Test Cases ***
ScrollingTestch
    Open Browser  ${URL}  ${Browserch}
    Maximize Browser Window
    Set Selenium Speed  2s
    TestSpeedTests

#LoginTCff
     #Open Browser  ${URL}  ${Browserff}
     #Maximize Browser Window
     #testspeedtests

#LoginTCie
     #Open Browser  ${URL}  ${Browserie}
     #Maximize Browser Window
     #testspeedtests


    #Close Browser
    Close All Browsers
