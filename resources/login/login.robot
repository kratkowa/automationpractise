# Keywords to login
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Go To Singin
    Wait Until Page Contains Element  xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a
    Click Element  xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a
    Wait Until Page Contains  Already registered?  10

Login To Account
    [Arguments]  ${username}  ${password}
    Input Text  id=email  ${username}
    Input Text  id=passwd  ${password}
    Click Button  id=SubmitLogin
    Wait Until Page Contains  My account  10

Logout
    [Arguments]
    Click Element  xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[2]/a
    Wait Until Page Contains  Authentication  10

End Test
    Run Keyword If Test Failed  Logout
    Run Keyword If Test Failed  Close Browser
    Run Keyword If Test Failed  Fatal Error