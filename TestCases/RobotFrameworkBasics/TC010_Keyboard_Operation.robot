*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com

*** Test Cases ***
Keyword operation
    open browser    ${URL}    ${Browser}
    maximize browser window
    click link    xpath://a[text()='Login']
    press key    name=username    hello
    press key    xpath://button[@type='submit']    \\13

    #double click element    xpath://a[text()='Login']