*** Settings ***
Library    Browser


*** Variables ***
${SEARCH_SUMMARY_HEADING_POSITION} =  css=h1.search-summary__heading


*** Keywords ***
Filter By Colors
    [Arguments]    ${FILTER}
    Choose Filter    ${FILTER.type}    ${FILTER.value}
    Check Filtered Results By Colors    ${FILTER.label}   ${FILTER.color_value} 


Filter By Prices
    [Arguments]    ${FILTER}
    Choose Filter    ${FILTER.type}    ${FILTER.value}
    Check Filtered Results By Prices    ${FILTER.label}    ${FILTER.price_range}
    

Check Search Summary Heading
    [Arguments]    ${SEARCH_ATTRIBUTE}
    Get Text       ${SEARCH_SUMMARY_HEADING_POSITION}    contains    ${SEARCH_ATTRIBUTE.name}


Choose Filter
    [Arguments]    ${FILTER_TYPE}    ${FILTER_VALUE}
    Click          ${FILTER_TYPE}
    Click          ${FILTER_VALUE}
    Sleep          3s


Check Filtered Results By Colors
    [Arguments]    ${FILTER_LABEL}    ${FILTER_COLOR_VALUE}
    Get Text       ${FILTER_LABEL}    contains    ${FILTER_COLOR_VALUE}


Check Filtered Results By Prices
    [Arguments]    ${FILTER_LABEL}    ${FILTER_PRICE_VALUE}
    Get Text       ${FILTER_LABEL}    contains    ${FILTER_PRICE_VALUE}

