*** Settings ***
Resource    ../../Resources/Resources2.robot

*** Variables ***


*** Test Cases ***
Test Case in BDD Format
# There should be one single space when writing given when and then
# Whenyou try to execute given will be automatiically ignored
    Given Start Broweser and Max  # Keyword we are calling from resoucse directory
    When Registration
    Then close window

