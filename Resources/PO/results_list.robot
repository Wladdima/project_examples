*** Settings ***
Library    Browser


*** Variables ***
${SEARCH_SUMMARY_HEADING_POSITION} =  css=h1.search-summary__heading


*** Keywords ***
Filter items
    [Arguments]    ${Filter}

Check search summary heading
    [Arguments]    ${SEARCH_ATTRIBUTE}
    Get Text       ${SEARCH_SUMMARY_HEADING_POSITION}    contains    ${SEARCH_ATTRIBUTE.name}
