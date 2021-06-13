*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}    Chrome
${URL}    https://gmail.com

*** Test Cases ***
TC_001 Variable test
    ${var1}     set variable    Hello Robot
    log to console    ${var1}

*** Keywords ***

