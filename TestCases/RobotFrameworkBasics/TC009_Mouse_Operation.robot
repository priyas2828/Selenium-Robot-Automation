*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com

*** Test Cases ***
Scroll down in browser using javascripts
    open browser    ${URL}    ${Browser}
    maximize browser window
    #open context menu   xpath://span[contains(text(),'VIDEOS')]
    #double click element    xpath://a[text()='Login']
    #mouse down     xpath://a[text()='Login']
    #mouse up     xpath://a[text()='Login']
    mouse over    xpath://span[contains(text(),'Contact Us')]
    sleep    10 seconds
