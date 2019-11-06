
*** Variables ***
#configuretion
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login

# Input Data
&{UNREGISTERED_USER}  Email=admin@robotframeworktutorial.com  Password=TestPassword!  ExpectedErrorMessage=you signed up yet. try a different email adderss or
&{INVALID_PASSWORD_USER}  Email=bryan@bryanlamb.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters with no spaces.
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=ErrorMessage=Please your email address and password.