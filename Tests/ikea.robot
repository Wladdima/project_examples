*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/ikea_app.robot
Suite Setup  Start Browser
Suite Teardown    End Browser


*** Variables ***



*** Test Cases ***
Ikea "Main" Page Should Open
    Open Ikea Main Page

Login Menu Should Open
    Open "Login" Menu

Valid Error Should Be Seen
    Open Ikea Main Page
    Open "Login" Menu
    Login
