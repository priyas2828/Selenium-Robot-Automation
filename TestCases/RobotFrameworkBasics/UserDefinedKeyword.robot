*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/WithArguement.robot
Library   SeleniumLibrary
Resource    ../Resources/WithArguement.robot
Documentation    This file is having test case on the userdefined keyword functionality


*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***

UserDefined WithoutArguement
    [Documentation]   This is about userdefined with and without Argurment
    #[Timeout]    8s
    [Timeout]   8s    Its failed to execute
    WithoutArguement
    input text    name:fld_username    Testing123
    input text    name:fld_email    abcd@gmail.com

WithArguement
    WithArguement   ${URL}  ${Browser}

WithArguementRetruntype
    ${Res}=   WithArguement.WithArguementRetruntype   ${URL}   ${Browser}
    log    ${Res}



