# Contact us bookmark
# Autor: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../general.robot

*** Keywords ***
Go To Contact Us
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[3]/a  expected_category=/html/body/div/div[2]/div/div[1]/span[2]