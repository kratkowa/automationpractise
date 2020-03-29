# Add elements to basket
# Author: Kajetan Ziółkowski

*** Settings ***
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/women_category.robot
Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}


Add Product To Basket
    [Documentation]  Add product to basket
    Go To Women Category
    Add First Element To Cart


Remove Products From Basket
    [Documentation]  Go to basket. Remove existing element. Verify message text.
    Remove One Element From Basket
    Verify Message Text


End Test
    [Documentation]  Logout and close browser
    Close Browser
