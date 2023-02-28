*** Settings ***
Library    Browser 



*** Keywords ***
Start Browser
    Open Browser    about:blank
    Sleep           2

End Browser
    Close Browser