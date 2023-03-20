*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser   
    New Page               ${MAIN_PAGE_URL}
    main_page.Reject all cookies
    Sleep           2s

End Browser
    Close Browser