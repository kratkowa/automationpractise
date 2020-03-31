#Autor: Michał Kłonowski
*** Settings ***
Documentation    Test of sending message to customer service using valid and invalid data.
Resource  ../config/global.robot
Resource  ../resources/bookmarks/contact_us.robot

*** Test Cases ***
Start Test
    [Documentation]  Open browser and go to "Contact Us"
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Contact Us While Unlogged

Sending Blank Message
    [Documentation]  Send empty message using correct email address
    Set Customer Service in Subject Heading
    Set Correct Email Address
    Send Message

Check Information About Blank Message
    [Documentation]  Check text of returned alert
    Blank Message Alert

Sending Message Using Invalid Email
    [Documentation]  Send text message  using incorrect email
    Set Incorrent Email Address
    Set Text Message
    Send Message

Check Message Status
    [Documentation]  Check text of returned alert
    Invalid Email Alert

Sending Message Using Correct Data
    [Documentation]  Send message giving all correct data
    Set Customer Service in Subject Heading
    Set Correct Email Address
    Set Text Message
    Send Message

Check Information- Message Has Been Sent
    [Documentation]  Check text of returned alert
    Message Has Been Sent Alert

End Test
    Close Browser