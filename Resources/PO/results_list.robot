*** Settings ***
Library    Browser


*** Variables ***
${SEARCH_SUMMARY_HEADING_POSITION} =  css=h1.search-summary__heading
${FILTER_COLOUR} =  css=button[aria-label='Filtermethode Farbe']
${SOFA_GREEN} =    css=#grün
${FILTER_LABEL} =  css=div.plp-applied-filters-bar > button
${FILTER_LABEL_TEXT} =  grün



*** Keywords ***
Filter items
    [Arguments]    ${Filter}
    

Check search summary heading
    [Arguments]    ${SEARCH_ATTRIBUTE}
    Get Text       ${SEARCH_SUMMARY_HEADING_POSITION}    contains    ${SEARCH_ATTRIBUTE.name}

Choose Filter
#    [Arguments]    ${Filter}
    Click          ${FILTER_COLOUR}
    Click          ${SOFA_GREEN}

Check filtered results
#    [Arguments]    ${Filter}
    Get Text       ${FILTER_LABEL}    contains    ${FILTER_LABEL_TEXT}
