*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser
    Open Browser    about:blank
    Sleep           2

End Browser
    Close Browser