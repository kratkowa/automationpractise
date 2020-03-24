# Checking bookmarks on the page
# Autor: Patrycja Łukaszewicz
*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/cart.robot
Resource  ../resources/bookmarks/women_category.robot
Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}

Check Women Category
    Go To Women Category
    Set Categories Chechbox  tops  dresses
    Set Size Checkbox  S  M
    Set Compositions Checkbox  cotton  viscose
    Set Styles Checkbox  girly
    Set Condition Checkbox  new

End Test
    [Documentation]  Logout and close browser
    Logout
    Close Browser