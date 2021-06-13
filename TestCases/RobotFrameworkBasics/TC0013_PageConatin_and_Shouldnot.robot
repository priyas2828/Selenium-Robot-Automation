*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com
${Var1}     VIDEOS
${Var2}     VIDEOS1

*** Test Cases ***
TC013_Page conatins and page should not
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    page should contain    ${Var1}
    click element    xpath://a[text()='Login']
    log to console    ${Var1}
    page should not contain    ${Var2}
    log to console    ${Var2}