*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Start Broweser and Max
    open browser    https://thetestingworld.com/testings      Chrome
    maximize browser window

close window
    ${Title}=   get title
    log    ${Title}
    close browser
Before Each Test Suite
    log    Before Each Test Suite
After Each Test Suite
    log    After Each Test Suite

Registration
    [Documentation]    Entering the details of Registration
    input text    name:fld_username    Testing
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    test123