*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_FIELD} =  css=#username
${PASSWORD_FIELD} =  css=#password
${SUBMIT_LOGIN_BUTTON} =  css=button.btn.btn--emphasised

*** Keywords ***
Input Username
    Type Text    ${USERNAME_FIELD}   abc@mail.com

Input Password
    Type Text    ${PASSWORD_FIELD}    12345678

Submit login
    Click        ${SUBMIT_LOGIN_BUTTON}


    