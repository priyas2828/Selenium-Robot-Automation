*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Resources1.robot

Documentation    This file understanding the tags concept
Default Tags    dflt

*** Variables ***
${Browser}      Chrome
${URL}      https://thetestingworld.com/testings

*** Test Cases ***
Robot First Testcase
    [Tags]    Smoke
    open browser    ${URL}    ${Browser}
    input text    name:fld_username    Testing
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    test123

Robot Next Testcase
    #[Tags]     sanity
    # open browser    ${URL}    ${Browser}
    select radio button    add_type    office
