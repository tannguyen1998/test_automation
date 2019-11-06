*** Settings ***
Resource  Resources/scopee.robot

*** Variables ***
${MY_VARIABLE} =  From the resources file

*** Test Cases ***
Create and log a variable
    #${my_variable} =  Set Variable  some information
    Log  ${MY_VARIABLE}

Access a variable
    Log  ${MY_VARIABLE}
*** Keywords ***

