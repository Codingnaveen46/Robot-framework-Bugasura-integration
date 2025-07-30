*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.3s

Login With Valid Credentials
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${DASHBOARD}    timeout=10s

Login With Invalid Credentials
    Input Text    ${USERNAME_FIELD}    ${INVALID_USER}
    Input Text    ${PASSWORD_FIELD}    ${INVALID_PASS}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${ERROR_MESSAGE}    timeout=10s

Verify Dashboard Is Visible
    Page Should Contain Element    ${DASHBOARD}

Verify Error Message Is Displayed
    Page Should Contain Element    ${ERROR_MESSAGE}
