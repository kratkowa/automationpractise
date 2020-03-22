#Autor:Michał Kłonowski
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Sending Message With Invalid Email Address
    [Documentation]  Sending message to the service with corectly reffiled all fields

    Open Browser    http://automationpractice.com/  chrome
#Idzie do Contact Us
    Click Link      http://automationpractice.com/index.php?controller=contact
#Czeka aż wczyta się box [webmaster/customer] <-bez tego test nie przechodzi dalej (Sleep 2 może być alternatywą)
    Wait Until Element Is Enabled   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select
#wpisuje prawidłowego maila
    Input Text      xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/p[4]/input  text=xyzol@o2.pl
#wpisuje referencje zamówienia
    Input Text      xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[2]/input  text=something
#wybiera z boxa customera
    Click Element                   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select
    Click Element   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[1]/div[1]/div/select/option[2]
#wypełnia treść wiadomości
    Input Text      xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[1]/div[2]/div/textarea  text=Trescwiadomosci
#wysyła wiadomość
    Click Element   xpath=/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[2]/button
#sprawdza, czy jest odpowiednia informacja zwrotna
    Page Should Contain    text=Your message has been successfully sent to our team.
#zamyka przeglądarkę
    #Close Browser