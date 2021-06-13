*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
Screenshot use case
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    Testing
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    test123
    #capture page screenshot    C:/developement/Robot Framework/Automation/TestCases/TC006.png
    capture page screenshot  ./snapshots/TC006.png