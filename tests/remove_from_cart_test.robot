# Add elements to cart
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

Add Product To Cart
    [Documentation]  Add product to cart
    Go To Women Category
    Add First Element To Cart

Remove Products From Cart
    [Documentation]  Go to cart. Remove existing element. Verify message text.
    Remove One Element From Cart
    Verify Message Text

End Test
    [Documentation]  Logout and close browser
    Close Browser
