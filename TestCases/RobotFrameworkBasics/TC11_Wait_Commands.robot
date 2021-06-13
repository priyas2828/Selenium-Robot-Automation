*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com

*** Test Cases ***
TC_001 Browser start and End
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    wait until page contains    Videos
    click element    //span[contains(text(),'VIDEOS')]
