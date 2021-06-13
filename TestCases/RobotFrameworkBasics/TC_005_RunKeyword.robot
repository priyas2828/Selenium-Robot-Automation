*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
run keyword Example
    #${Key_var}    set variable    log to console
    #run keyword    ${Key_var}    Testingword@gmail.com
    ${var}=     set variable    3
    run keyword if    '${var}'=='3'   log to console    value Found
    run keyword if    '${var}'=='4'   log to console    value Not Found

*** Variables ***

*** Keywords ***
