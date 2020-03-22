# Add elements to basket
# Author: Kajetan Ziółkowski

*** Settings ***
Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/cart.robot
Resource  ../resources/bookmarks/woman_category.robot
Resource  ../resources/goToPages/pages.robot
Test Teardown  End Test

*** Test Cases ***
Start Test
    [Documentation]  Open browser and login
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img

Add Two Products To Basket
    [Documentation]  Add product to basket
    sleep  1
# Przejście do stront produktu
    Click Element  xpath:/html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[1]/div/div[1]/div/a[1]/img
    sleep  1
#    Dodanie do koszyka
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div/div[4]/form/div/div[3]/div[1]/p/button
    sleep  2
# Wybranie opcji kontynuowania zakupów
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/span/span
#przejście do sekcji women
    sleep  2
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]
#wybor ubrania
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div[2]/ul/li[2]/div/div[1]/div
#    dodanie do koszyka
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div/div[4]/form/div/div[3]/div[1]/p/button

Proceed To Checkout
    sleep  2
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/a
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
    sleep  2
    Select Checkbox  name:cgv
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/form/p/button

Choose Payment Method
# Pay by bank wire
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div[3]/div[1]/div/p

Order Confirmation
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
    sleep  2
    Element Text Should Be  xpath:/html/body/div/div[2]/div/div[3]/div/div/p/strong  Your order on My Store is complete.
    sleep  2

End Test
    [Documentation]  Logout and close browser
    Logout
    Close Browser