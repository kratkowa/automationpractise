# Women Category
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../general.robot

*** Keywords ***
Go To Women Category
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a  expected_category=/html/body/div/div[2]/div/div[3]/div[2]/div[1]/div
    sleep  2

Add First Element To Cart
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div[2]/ul/li[1]/div/div[1]/div/a[1]/img
# Przejście do strony produktu
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div/div[4]/form/div/div[3]/div[1]/p/button
# Dodanie do koszyka
    sleep  2
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/span/span
# Wybranie opcji kontynuowania zakupów
    sleep  2

Add Second Element To Cart
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div[2]/ul/li[2]/div/div[1]/div/a[1]/img
# Wybor ubrania
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div/div[4]/form/div/div[3]/div[1]/p/button
# Dodanie do koszyka
    sleep  2
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[1]/span
    Wait Until Element Is Visible  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[3]/div
    sleep  2
# Zamknięcie okna modalnego


Proceed To Checkout
    sleep  2
    Click Element  xpath:/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/a/b
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
    sleep  2
    Select Checkbox  name:cgv
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/form/p/button

Choose Payment Method Bank Wire
# Pay by bank wire
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/div/div[3]/div[1]/div/p

Order Confirmation
    sleep  2
    Click Element  xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
    sleep  2
    Element Text Should Be  xpath:/html/body/div/div[2]/div/div[3]/div/div/p/strong  Your order on My Store is complete.
    sleep  2