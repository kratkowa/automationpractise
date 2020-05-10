# Change personal information for user account
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/my_profile.robot
Resource  ../config/change_personal_information_test_config.robot
Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}

Change Personal Information
    [Documentation]  User change personal information
    Go To Profile
    Go To My Personal Information
    Edit Personal Information  ${NAME}  ${LASTNAME}  ${DAY}  ${MONTH}  ${PASSWORD}  ${NEW_PASSWORD}
    Save Settings

End Test
    [Documentation]  Logout and close browser
    Logout
    Close Browser
