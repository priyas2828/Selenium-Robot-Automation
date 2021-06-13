*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser start and End
    #${speed}=       get selenium speed
    #log to console   ${speed}
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    ${default_T}=       get selenium implicit wait
    log to console    ${default_T}
    set selenium implicit wait    2 seconds
    ${default_T}=       get selenium implicit wait
    log to console    ${default_T}
    #set selenium speed   20 seconds
    #${timeout}=    get selenium timeout
    #log to console    ${timeout}
    #wait until page contains   Testing
    #sleep    10 seconds
    #set selenium speed    2 seconds
    input text    name:fld_username    Testing
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    test123
   # ${speed}=       get selenium speed
    #log to console   ${speed}



