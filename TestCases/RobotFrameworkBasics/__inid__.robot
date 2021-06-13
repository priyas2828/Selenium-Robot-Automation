*** Settings ***
Suite Setup     Before Each Test Suite
Suite Teardown  After Each Test Suite

*** Variables ***


*** Keywords ***
Before Each Test Suite
    log    Test Suite started
After Each Test Suite
    log    Test Suite Ended