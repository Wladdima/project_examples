*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/ikea_app.robot
Resource    ../Resources/Data/input_user_data.robot
Resource    ../Resources/Data/search_data.robot
Library     RetryFailed
Test Setup  Start Browser
Test Teardown    End Browser

*** Variables ***


*** Test Cases ***
Ikea "Main" Page Should Open
    Open Ikea Main Page

Login Menu Should Open
    Open "Login" Menu

Valid Error Text After Login With Invalid Data Should Be Seen
    [Template]    Login with Invalid Data
    ${LOGIN_WITH_INVALID_DATA}
    ${LOGIN_WITHOUT_EMAIL}
    ${LOGIN_WITHOUT_PASSWORD}


Search Should Work
    Find item    ${SEARCH_ATTRIBUTE}
    Sleep        3s

Filer By Prices Should Work
    [Tags]    test:retry(2)
    [Template]    Filter Items By Prices
    ${SEARCH_ATTRIBUTE}    ${FILTER_PRICE_0_200}
    ${SEARCH_ATTRIBUTE}    ${FILTER_PRICE_200_400}
    ${SEARCH_ATTRIBUTE}    ${FILTER_PRICE_400_600}
    ${SEARCH_ATTRIBUTE}    ${FILTER_PRICE_600_800}
    ${SEARCH_ATTRIBUTE}    ${FILTER_PRICE_800}

Filter By Colors Should Work
    [Tags]    test:retry(2)
    [Template]    Filter Items By Colors    
    ${SEARCH_ATTRIBUTE}    ${FILTER_FOR_RED_COLOR}
    ${SEARCH_ATTRIBUTE}    ${FILTER_FOR_GREEN_COLOR}
    ${SEARCH_ATTRIBUTE}    ${FILTER_FOR_BLACK_COLOR}
    ${SEARCH_ATTRIBUTE}    ${FILTER_FOR_WHITE_COLOR}
