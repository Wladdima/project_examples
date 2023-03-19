*** Settings ***
Library    Browser
Resource   ../Data/input_user_data.robot 

*** Variables ***
${USERNAME_FIELD} =  css=#username
${PASSWORD_FIELD} =  css=#password
${SUBMIT_LOGIN_BUTTON} =  css=button.btn.btn--emphasised
${BACK_TO_MAIN_PAGE} =    css=div.sc-bdVaJa.sc-exAgwC.hfVlac > div.sc-bwzfXH.sc-TOsTZ.wCqwW > a

*** Keywords ***
Input Username
    [Arguments]    ${Username}
    Type Text    ${USERNAME_FIELD}   ${Username}

Input Password
    [Arguments]  ${Password}
    Type Text    ${PASSWORD_FIELD}    ${Password}

Submit login
    Click        ${SUBMIT_LOGIN_BUTTON}

Input invalid login data
    [Arguments]    ${INVALID_LOGIN_DATA}
    Input Username    ${INVALID_LOGIN_DATA.email}
    Input Password    ${INVALID_LOGIN_DATA.password}

Check error message text
    [Arguments]     ${INVALID_LOGIN_DATA}
    Get Text    ${INVALID_LOGIN_DATA.error_message_position}    contains    ${INVALID_LOGIN_DATA.error_message}
    Click    ${BACK_TO_MAIN_PAGE}
