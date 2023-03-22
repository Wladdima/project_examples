*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/ikea_app.robot
Resource    ../Resources/Data/search_data.robot
Resource    ../Resources/Data/add_to_favourites_data.robot
Library     RetryFailed
Test Setup  Start Browser
Test Teardown    End Browser


*** Variables ***
${ITEM_NUMBER} =  09272666


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
    Find item    ${SEARCH_SOFA}
    Sleep        3s

Filter By Prices Should Work
    [Tags]    test:retry(2)
    [Template]    Filter Items By Prices
    ${SEARCH_SOFA}    ${FILTER_PRICE_0_200}
    ${SEARCH_TABLE}    ${FILTER_PRICE_200_400}
    ${SEARCH_TABLE}    ${FILTER_PRICE_400_600}
    ${SEARCH_SOFA}    ${FILTER_PRICE_600_800}
    ${SEARCH_SOFA}    ${FILTER_PRICE_800}

Filter By Colors Should Work
    [Tags]    test:retry(2)
    [Template]    Filter Items By Colors    
    ${SEARCH_SOFA}    ${FILTER_FOR_RED_COLOR}
    ${SEARCH_SOFA}    ${FILTER_FOR_GREEN_COLOR}
    ${SEARCH_SOFA}    ${FILTER_FOR_BLACK_COLOR}
    ${SEARCH_SOFA}    ${FILTER_FOR_WHITE_COLOR}

User Can Add An Item To Favourites
    [Template]    Add An Item To Favourites
    ${SEARCH_SOFA}    ${SOFA_LANDSKRONA}
    ${SEARCH_TABLE}   ${TABLE_PINNTORP}
    