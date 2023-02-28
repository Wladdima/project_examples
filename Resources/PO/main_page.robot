*** Settings ***
Library    Browser

*** Variables ***
${MAIN_PAGE_URL}    https://www.ikea.com/de/de/
${MAIN_PAGE_WELCOME_TEXT} =  css=h1.c1m1sl8e
${LOGIN_BUTTON} =  css=#header__button


*** Keywords ***
Open "Main" Page
    Go To    ${MAIN_PAGE_URL}

Verify "Main" Page Opened
    Get Text        ${MAIN_PAGE_WELCOME_TEXT}    contains    Willkommen bei IKEA Deutschland

Verify "Login" Menu Opened
    Get Text    ${LOGIN_BUTTON}    contains    Einloggen

Open "Login" Page
    Click      ${LOGIN_BUTTON}
