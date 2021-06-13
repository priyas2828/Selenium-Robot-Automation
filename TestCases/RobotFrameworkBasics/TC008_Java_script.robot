*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com

*** Test Cases ***
Scroll down in browser using javascripts
    open browser    ${URL}    ${Browser}
    maximize browser window
    execute javascript    window.scrollTo(0,1000)
    # horiaonatal and vertical
    sleep   10 seconds
