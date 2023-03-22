*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser   
#    Open Browser            ${MAIN_PAGE_URL}
    New Browser            headless=False    args=["--start-in-incognito"]
    New Page               ${MAIN_PAGE_URL}
    main_page.Reject all cookies
    Sleep           2s

End Browser
    Close Browser