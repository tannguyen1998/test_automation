*** Settings ***

${MY_VALUE} =  100

*** Test Cases ***
Testing a true IF statement
    ${MY_VALUE} > 50  Keyword 1

Testing a false IF statement
    Run keyword If  ${MY_VALUE} > 200  Keyword 1

Testing an IF/ELSE statement
    Run Keyword If  ${MY_VALUE} > 200  Keyword 1  ELSE  Keyword 2

Testing an IF/ELSE IF/ELSE statement
    Run Keyword If  ${MY_VALUE} >200  Keyword 1 ELSE IF  ${MY_VALUE} == 10  Keyword 2  ELSE  Keyword 3

*** Keywords ***
Keyword 1
    Log  In Keyword 1

Keyword 2
    Log  In Keyword 2

Keyword 3
    Log  In Keyword 3