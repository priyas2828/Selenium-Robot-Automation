*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Resources1.robot
# In resourcses you need to call the Keywords in testcases

*** Variables ***
${Browser}      Chrome
${URL}      https://thetestingworld.com/testings

*** Test Cases ***
Robot FetchData
#    Create Folder at Runtime    Hello123    testing123
#    Create Folder at Runtime
    open browser    ${URL}  ${Browser}
    maximize browser window
#    ${page Title}=    get title
#    log    ${page Title}
    Concatenate usrname and password    Testing     world

