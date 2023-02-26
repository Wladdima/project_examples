*** Settings ***
Library    Browser



*** Variables ***
${IKEA_WELCOME_TEXT} =  css=h1.c1m1sl8e


*** Test Cases ***
Open Ikea website
    Open Browser    https://www.ikea.com/de/de/
    Get Text        ${IKEA_WELCOME_TEXT}    contains    Willkommen bei IKEA Deutschland



    