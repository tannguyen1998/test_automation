*** Settings ***



*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regression
    log to console  This is use reg test
    log to console  user registration test is over
TC2 LoginTest
    [Tags]  sanity
    log to console  this is login test
    log to console  login test is over
TC3 Change user settings
    [Tags]  regression
    log to console  this is changin user settings test
    log to console  this is logout test
TC4 Logout Test
    [Tags]  sanity
    log to console  this is logout test
    log to console  logout test is over


#robot -d result --include=sanity result tests   --chi Run cac testcase theo ten [tags]--
#robot -d result -i sanity -i regression tests   --nt--
#robot -d result -e sanity  tests                -- khong Run cac testcase dc select--