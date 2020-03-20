# Dress category
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  /general.robot

*** Keywords ***
Go To Dress Category
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[2]/a  expected_category=/html/body/div/div[2]/div/div[3]/div[2]/div[1]/div