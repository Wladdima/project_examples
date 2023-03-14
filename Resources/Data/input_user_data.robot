*** Variables ***
${ERROR_INVALID_POSITION}    css=div.sc-EHOje.euTtyW > div.sc-bZQynM.bCtdPO > div > div.toast__body-wrapper > div.toast__body > p:nth-child(2)
${ERROR_WITHOUT_EMAIL_POSITION}    css=#username-error
${ERROR_WITHOUT_PASSWORD_POSITION}    css=#password-error


&{LOGIN_WITH_INVALID_DATA}   email=abc123@mail.com    password=12345678     error_message_position= ${ERROR_INVALID_POSITION}    
...    error_message=Hej! Beim Anfordern dieser Seite ist ein Fehler aufgetreten. Bitte aktualisiere die Seite, um es erneut zu versuchen.
&{LOGIN_WITHOUT_EMAIL}       email=${EMPTY}        password=12345678     error_message_position= ${ERROR_WITHOUT_EMAIL_POSITION}
...    error_message=Bitte logge dich mit deiner E-Mail Adresse ein. 
&{LOGIN_WITHOUT_PASSWORD}    email=abc@mail.com    password=${EMPTY}     error_message_position= ${ERROR_WITHOUT_PASSWORD_POSITION}
...    error_message=Es tut uns leid, wir können dich nicht ohne Passwort einloggen
