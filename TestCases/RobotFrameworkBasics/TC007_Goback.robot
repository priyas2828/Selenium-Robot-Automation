*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
Go back|Get location
    open browser    ${URL}      ${Browser}
    go to    https://google.com
    ${URL1}=    get location
    log to console    ${URL1}
    go back
    ${URL1}=    get location
    log to console    ${URL1}
