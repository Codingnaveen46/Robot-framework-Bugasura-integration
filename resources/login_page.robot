*** Variables ***
${URL}             https://opensource-demo.orangehrmlive.com/
${BROWSER}         chrome
${USERNAME}        Admin
${PASSWORD}        admin123
${INVALID_USER}    wronguser
${INVALID_PASS}    wrongpass

${USERNAME_FIELD}  name=username
${PASSWORD_FIELD}  name=password
${LOGIN_BUTTON}    xpath=//button[@type='submit']
${DASHBOARD}       xpath=//h6[text()='Dashboard']
${ERROR_MESSAGE}   xpath=//p[contains(@class,'oxd-text oxd-text--p')]
