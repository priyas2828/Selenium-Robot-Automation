*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Keywords ***
Startbrowserandmaximize
    open browser    ${URL}    ${Browser}
    maximize browser window

Close browser Window
    ${Title}=    get title
    log    ${Title}
    close browser
Before Each Test suite
    Log    Before Each Test suite
After Each test suite
    log    After Each Test suite

