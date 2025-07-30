*** Settings ***
Documentation    Valid and Invalid Login Test
Resource         ../resources/login_page.robot
Resource         ../resources/keywords.robot
Test Setup       Open Browser To Login Page
Test Teardown    Close Browser

*** Test Cases ***

Login With Valid User #TES74
    Login With Valid Credentials
    Verify Dashboard Is Visible

Login With Invalid User #TES75
    Login With Invalid Credentials
    Verify Error Message Is Displayed
