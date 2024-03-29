*** Settings ***
Library    Browser
Resource   top_nav.robot


*** Variables ***
${SEARCH_SUMMARY_HEADING_POSITION} =  css=h1.search-summary__heading
${ADD_TO_FAVOURITES_ICON} =    css=div.pip-desktop-favourite-button-wrapper > button
${FAVOURITES_ICON} =    css=li.hnf-header__shopping-list-link > a > span
${LIST_POSITION} =    css=a.ListHeader_listName__3wNZq
${LIST_ITEMS} =    css=ul[data-testid="retail-items"]


*** Keywords ***
Filter By Colors
    [Arguments]    ${FILTER}
    Choose Filter    ${FILTER.type}    ${FILTER.value}
    Sleep    5s
    Check Filtered Results By Colors    ${FILTER.label}   ${FILTER.color_value} 


Filter By Prices
    [Arguments]    ${FILTER}
    Choose Filter    ${FILTER.type}    ${FILTER.value}
    Sleep        5s
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

Add Item To Favourites
    [Arguments]    ${ITEM}  
    Click    css=div[data-ref-id="${ITEM.number}"]
    sleep    2s
    Click    ${ADD_TO_FAVOURITES_ICON}
    Sleep    3s

Check Added Item In Favourites
    [Arguments]    ${ITEM}
    Click          ${FAVOURITES_ICON}
    Click          ${LIST_POSITION}
    Get Text       ${LIST_ITEMS}    contains    ${ITEM.name}
    Sleep          3s