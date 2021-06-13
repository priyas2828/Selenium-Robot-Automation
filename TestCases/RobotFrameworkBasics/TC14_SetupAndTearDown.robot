*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SetupandTearDown.robot
#Test Setup    Start browser and maximize
#Test Teardown   Close browser Window
#Suite Setup    Before Each Test suite
#Suite Teardown    After Each test suite


*** Variables ***


*** Test Cases ***
SetupandTeardown Test case

    input text    name:fld_username     priya
    input text    name:fld_email        Priya@gmail.com
    input text    name:fld_password     Priya@123
    input text    name:fld_cpassword    Priya@123