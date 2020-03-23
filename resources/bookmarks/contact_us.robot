# Contact us bookmark
# Autor: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary
Resource  ../general.robot

*** Keywords ***
Go To Contact Us
    Go To Specific Menu  tab_page_xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[3]/a  expected_category=/html/body/div/div[2]/div/div[1]/span[2]


#Autor: Michał Kłonowski
Set Customer Service in Subject Heading         #wybiera customera z boxa
    Wait Until Element Is Enabled       xpath=//*[@id="id_contact"]
    Click Element                       xpath=//*[@id="id_contact"]
    Click Element                       xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select/option[2]

Set Correct Email Address
    Wait Until Element Is Enabled       xpath=//*[@id="email"]
    Input text                          xpath=//*[@id="email"]  text=xyz@o2.pl

Set Incorrent Email Address
    Wait Until Element Is Enabled       xpath=//*[@id="email"]
    Input text                          xpath=//*[@id="email"]  text=xyz

Set Text Message
    Wait Until Element Is Enabled       xpath=//*[@id="message"]
    Input text                          xpath=//*[@id="message"]  text= s0m3 t3x+

Send Message
    Click Button                        xpath=//*[@id="submitMessage"]

Message has been sent
    Page Should Contain                 text=Your message has been successfully sent to our team.

Blank Message Alert
    Page Should Contain                 text=The message cannot be blank.

Invalid Email Alert
    Page Should Contain                 text=Invalid email address