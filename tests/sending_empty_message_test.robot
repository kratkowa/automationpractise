#Autor:Michał Kłonowski
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Sending Empty Message
    [Documentation]  Sending empty message to the service

    Open Browser    http://automationpractice.com/  chrome
#Idzie do Contact Us
    Click Link      http://automationpractice.com/index.php?controller=contact
#Czeka aż wczyta się box [webmaster/customer]<-bez tego test nie przechodzi dalej (Sleep 2 może być alternatywą)
    Wait Until Element Is Enabled   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select
#wpisuje maila
    Input Text      xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/p[4]/input  text=xyz@o2.pl
#wpisuje referencje zamówienia
    Input Text      xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[2]/input  text=something
#wybiera z boxa customera
    Click Element                   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select
    Click Element   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select/option[2]
#wysyła wiadomość????????
    Click Element   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[2]/button
#sprawdza, czy jest odpowiednia informacja zwrotna
    Page Should Contain    text=The message cannot be blank
#zamyka przeglądarkę
    Close Browser