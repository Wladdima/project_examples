*** Settings ***
Library     Browser
Resource    PO/main_page.robot
Resource    PO/top_nav.robot
Resource    PO/login_page.robot
Resource    PO/results_list.robot


*** Keywords ***
Open Ikea Main Page
#    main_page.Open "Main" Page
    main_page.Verify "Main" Page Opened

Open "Login" Menu
#    main_page.Open "Main" Page
    top_nav.Open Login Menu
    main_page.Verify "Login" Menu Opened

Login with invalid data
    [Arguments]    ${INVALID_LOGIN_DATA}
#    main_page.Open "Main" Page
    top_nav.Open Login Menu
    main_page.Open "Login" Page
    Sleep        3s
    login_page.Input invalid login data    ${INVALID_LOGIN_DATA}
    Sleep    3s
    login_page.Submit login
    login_page.Check error message text   ${INVALID_LOGIN_DATA}

Find item
    [Arguments]    ${SEARCH_ATTRIBUTE}
#    main_page.Open "Main" Page
    top_nav.Search    ${SEARCH_ATTRIBUTE}
    results_list.Check search summary heading    ${SEARCH_ATTRIBUTE}

Filter Items By Colors
    [Arguments]    ${SEARCH_ATTRIBUTE}    ${FILTER}
#    main_page.Open "Main" Page
    top_nav.Search    ${SEARCH_ATTRIBUTE}
    Sleep    5s
    results_list.Filter By Colors    ${FILTER}


Filter Items By Prices
    [Arguments]    ${SEARCH_ATTRIBUTE}    ${FILTER}
#   main_page.Open "Main" Page
#   main_page.Reject all cookies
    top_nav.Search    ${SEARCH_ATTRIBUTE}
    results_list.Filter By Prices    ${FILTER}
