*** Settings ***
Library    SeleniumLibrary
Library    Collections
*** Variables ***

*** Test Cases ***
TC_004_ForLoop
   ${List1}     create list    1    3    5
   FOR  ${i}    IN    ${List1}
    log to console    ${i}
    END


*** Keywords ***
