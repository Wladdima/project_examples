*** Settings ***
Library    Browser


*** Variables ***
${SEARCH_SUMMARY_HEADING_POSITION} =  css=h1.search-summary__heading



*** Keywords ***
Filter Items
    [Arguments]    ${FILTER}
    Choose Filter    ${FILTER.type}    ${FILTER.value}
    Check filtered results    ${FILTER.label}   ${FILTER.color_value} 
    

Check search summary heading
    [Arguments]    ${SEARCH_ATTRIBUTE}
    Get Text       ${SEARCH_SUMMARY_HEADING_POSITION}    contains    ${SEARCH_ATTRIBUTE.name}


Choose Filter
    [Arguments]    ${FILTER_TYPE}    ${FILTER_VALUE}
    Click          ${FILTER_TYPE}
    Click          ${FILTER_VALUE}

Check filtered results
    [Arguments]    ${FILTER_LABEL}    ${FILTER_COLOR_VALUE}
    Get Text       ${FILTER_LABEL}    contains    ${FILTER_COLOR_VALUE}
