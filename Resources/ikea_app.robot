*** Settings ***
Library     Browser
Resource    PO/main_page.robot
Resource    PO/top_nav.robot
Resource    PO/login_page.robot


*** Keywords ***
Open Ikea Main Page
    main_page.Open "Main" Page
    main_page.Verify "Main" Page Opened

Open "Login" Menu
    top_nav.Open Login Menu
#    Sleep    3s
    main_page.Verify "Login" Menu Opened

Login
    main_page.Open "Login" Page
    login_page.Input Username
    login_page.Input Password
    login_page.Submit login
    