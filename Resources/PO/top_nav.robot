*** Settings ***
Library    Browser


*** Variables ***
${LOGIN_ICON} =  css=#loyalty-modal-button


*** Keywords ***
Open Login Menu
    Click    ${LOGIN_ICON}
