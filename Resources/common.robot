*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser
    Set Browser Timeout    3s
    Open Browser        about:blank
    Sleep           2s

End Browser
    Close Browser