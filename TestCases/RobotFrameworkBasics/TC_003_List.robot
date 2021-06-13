*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***

*** Test Cases ***
TC_003_ListVariable
    @{List1}    create list    Hello    2    3.3
    ${list_length}    get length    ${List1}
    log to console    ${list_length}
    ${list_data}=    get from list    ${List1}   1
    log to console  ${list_data}
*** Keywords ***
