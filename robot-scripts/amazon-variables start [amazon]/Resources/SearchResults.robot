*** Settings ***

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search
    Click Link  css=#result_0 a.s-access-derail-page

