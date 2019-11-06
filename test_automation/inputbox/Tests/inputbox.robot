*** Setting ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  ie
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    title should be  nopCommerce demo store
    Click link  xpath://html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt"}  set variable  id:Email

    Element Should Be Visible  ${"email_txt"}
    Element Should Be Enabled  ${"email_txt"}

    Input Text  ${"email_txt"}  tan.nguyen@pap-tech.com
    Sleep  3s
    Clear Element Text  ${"email_txt"}
    Sleep  3s
    Close Browser

*** Keywords ***

