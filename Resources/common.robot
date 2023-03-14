*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser
    Open Browser        about:blank
    Set Browser Timeout    3s
    Sleep           2s

End Browser
    Close Browser