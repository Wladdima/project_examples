*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/ikea_app.robot
Resource    ../Resources/Data/input_user_data.robot
Resource    ../Resources/Data/search_data.robot
Suite Setup  Start Browser
Suite Teardown    End Browser


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

Search Results Should Be Filtered
    Filter item    ${SEARCH_ATTRIBUTE}    ${FILTER_FOR_COLOR}
    Sleep          3s
