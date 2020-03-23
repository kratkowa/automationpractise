#Autor:Michał Kłonowski
*** Settings ***
#Library  SeleniumLibrary
Resource  ../config/global.robot
Resource  ../resources/bookmarks/contact_us.robot

*** Test Cases ***
Start Test
    [Documentation]  Open browser
    Open Browser  ${WEB_ADDRESS}  ff
#ZNOWU TEN WARIAT 'GO TO CONTACT US' NIE DZIAŁA ;((((
    Click Link      http://automationpractice.com/index.php?controller=contact

Set Correct Values to the boxes
    [Documentation]  Select customer service, ..set valid email and write some text in message box

    Set Customer Service in Subject Heading
    Set Correct Email Address
    Set Text Message

Sending Message
    Send Message

Check information about message status
    Message has been sent

Closing browser
    Close Browser

