# User profile bookmark
# Autor: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../general.robot

*** Keywords ***
Go To Profile
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a  expected_category=/html/body/div/div[2]/div/div[1]/span[2]

Go To My Personal Information
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[2]/div/div[3]/div/div/div[1]/ul/li[4]/a  expected_category=/html/body/div/div[2]/div/div[1]/span[3]

Edit Personal Information
    [Arguments]  ${name}  ${lastname}  ${day}  ${mounth}  ${current_password}  ${new_password}
    Wait Until Page Contains Element  xpath=/html/body/div/div[2]/div/div[3]/div/div/h1
    Select Radio Button  id_gender  1
    Input Text  id=firstname  ${name}
    Input Text  id=lastname  ${lastname}
    Set Date Of Birth  ${day}  ${mounth}
    Input Text  id=old_passwd  ${current_password}
    Input Text  id=passwd  ${new_password}
    Input Text  id=confirmation  ${new_password}

# Jeszcze nie działa
Set Date Of Birth
    [Arguments]  ${day}  ${month}  ${year}
    Select From List By Index  id=days  ${day}
    Select From List By Index  id=months  ${month}
    Select From List By Index  id=years  ${year}

Save Settings
    Click button  xpath=/html/body/div/div[2]/div/div[3]/div/div/form/fieldset/div[11]/button
