*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com
${URL2}     https://google.com

*** Test Cases ***
TC_001 Browser start and End
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    open browser    ${URL2}     ${Browser}
    maximize browser window
    switch browser  1    #index number starts from 0*** Keywords ***
    ${URL}=     get location
    log to console  ${URL}
    click element    xpath://a[text()='Login']
    switch browser  2
    ${URL2}=    get location
    log to console    ${URL2}
    input text    name:q   hellow
    close all browsers
