*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserKeywords.robot

*** Variables ***
${Browser}      Chrome
${URL}      https://thetestingworld.com

*** Test Cases ***
Robot First Testcase
    #open browser    ${URL}    ${Browser}
    #${totalrows}=    Read Number of rows    Sheet1
    #log to console    ${totalrows}
    #${totalcell}=    Read Excel Data of Cell     Sheet1    1    2
    #log to console    ${totalcell}
    #maximize browser window
    #click element    xpath://a[text()='Login']
    #input text    name:username    Testing
    #input text    name:password    test@123
    #click element    xpath://button[@type='submit']
    #sleep    5s

# Run loop and Read data from Excel
    open browser    ${URL}    ${Browser}
    maximize browser window
    click element    xpath://a[text()='Login']
    ${totalrows}=    Read Number of rows    Sheet1    # Check number of rows and put ot in loop
    FOR    ${i}    IN RANGE  1  ${totalrows}+1    # from 1 and loop till 4
    ${username}=    Read Excel Data of Cell     Sheet1    ${i}    1    # ${i} is from loop
    ${Password}=    Read Excel Data of Cell     Sheet1    ${i}    2
    input text    name:username    ${username}     # Pass the arguemnt
    input text    name:password    ${Password}
    END
    click element    xpath://button[@type='submit']
    sleep    5s