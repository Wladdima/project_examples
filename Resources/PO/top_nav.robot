*** Settings ***
Library    Browser


*** Variables ***
${LOGIN_ICON} =  css=#loyalty-modal-button
${SEARCH_FIELD} =  css=input.search-field__input
${SEARCH_BUTTON} =  css=#search-box__searchbutton


*** Keywords ***
Open Login Menu
    Click    ${LOGIN_ICON}
    Sleep    3s

Search
    [Arguments]    ${SEARCH_ATTRIBUTE}
    Scroll To      ${SEARCH_FIELD}
    Type Text      ${SEARCH_FIELD}    ${SEARCH_ATTRIBUTE.name}
    Sleep          2s
    Click          ${SEARCH_BUTTON}
    Sleep          3s