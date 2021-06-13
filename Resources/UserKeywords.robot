*** Settings ***
Library    ../TestData/ReadData.py


*** Keywords ***
Read Number of rows
    [Arguments]     ${Sheetname}
   ${maxr}=  fetch_no_of_rows    ${Sheetname}
   [Return]    ${maxr}

Read Excel Data of Cell
    [Arguments]    ${Sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_no_of_cell    ${Sheetname}    ${row}    ${cell}
    [Return]    ${Celldata}
