*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/Locators.py

*** Variables ***
${Browser}      Chrome
${URL}      https://thetestingworld.com/testings


*** Test Cases ***
First Testcase
    [Tags]    Smoke
    open browser    ${URL}    ${Browser}
    ${username}=     Read Element Locator    Registration.username_textbox_name
    input text    name:fld_username    Testing
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    test123

Second Testcase
    #[Tags]     sanity
    open browser    ${URL}    ${Browser}
    select radio button    add_type    office

*** Keywords ***
Read Element Locator     # This keyword will call function from ython file i.e locators.py
    [Arguments]    ${JsonPath}
    ${result} =    read_locator_from_Json  ${JsonPath}
    [Return]    ${result}

