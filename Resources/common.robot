*** Settings ***
Library    Browser 
Resource   PO/main_page.robot


*** Keywords ***
Start Browser   
#    New Browser            timeout=3s    
    New Page               ${MAIN_PAGE_URL}
    main_page.Reject all cookies
#    Open Browser           options=add_argument("--incognito")
    Sleep           2s

End Browser
    Close Browser