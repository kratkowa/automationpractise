# Add elements to basket
# Author: Kajetan Ziółkowski

*** Settings ***
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/women_category.robot

#Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login.
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}

Add Two Products To Basket
    [Documentation]  Add two products to basket.
    Go To Women Category
    Add First Element To Cart
    Go To Women Category
    Add Second Element To Cart

Proceed To Checkout And Finalize
    [Documentation]  Go through cechout, choose payment method and finalize transaction.
    Proceed To Checkout
    Choose Payment Method Bank Wire
    Order Confirmation

End Test
    [Documentation]  Logout and close browser
    Logout
    Close Browser