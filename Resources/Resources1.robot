*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UsrKeywordWithoutArg.py
# in Resources.robot you can call the python file
*** Variables ***


*** Keywords ***
Start Browser and Maximize
    open browser    https://thetestingworld.com/testings      Chrome
    maximize browser window

close Browser Window
    ${Title}=   get title
    log    ${Title}
    close browser

Before Each Test suite
    log    Before Each Test suite
After Each Test Suite
    log    After Each Test Suite

# User defined keyword using python code and calling python functions
Create Folder at Runtime
    [Arguments]    ${foldername}       ${subfoldername}
#    create_folder1    ${foldername}
#    create_sub_folder    ${subfoldername}
     #create_folder
     #create_sub_folder
Concatenate usrname and password
    [Arguments]    ${username}  ${Password}
    ${result val}=  Concatenate_two_values  ${username}    ${password}
    log    ${result val}

# We need to add some library keyword in the user defined  keyword
    log     "Task Done successfully"

#WithoutArguement
#    [Documentation]    Opening and maximizing the browser
#    Open Browser    https://thetestingworld.com/testings      chrome
#    maximize browser window

#WithArguement
#    [Documentation]    Opening and maximizing the browser
#    [Arguments]    ${InputURL}    ${InputBrowser}
#    Open Browser    ${URL}      ${Browser}
#    maximize browser window
#WithArguementRetruntype
#    Open Browser    ${URL}      ${Browser}
#    maximize browser window
#   ${Title}=   Get title
#    log    ${Title}