# Login to account
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}

End Test
    [Documentation]  Logout and close browser
    Logout
    Close Browser

