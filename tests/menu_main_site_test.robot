#Autor: Michał Kłonowski
*** Settings ***
Documentation    Chcecking possibility of going to specific bookmarks using menu on the bottom of main page.
Resource  ../config/global.robot
Resource  ../resources/login/login.robot
Resource  ../resources/bookmarks/menu_home_page.robot

*** Test Cases ***
Open Browser And Login To Account
    Open Browser  ${WEB_ADDRESS}  ff
    Go To Singin
    Login To Account  ${USERNAME}  ${PASSWORD}
    Go to Home Page

Check Section "My Orders"
    Go To "My Orders"
    Check Content and Title "My Orders"
    Go to Home Page

Check Section "My Credit slips"
    Go To "My Credit Slips"
    Check Content and Title "My Credit Slips"
    Go to Home Page

Check Section "My Address"
    Go To "My Address"
    Check Content and Title "My Address"
    Go to Home Page

Check Section "My Presonal Info"
    Go To "My Presonal Info"
    Check Content and Title "My Personal Info"
    Go to Home Page

Check "Log out"
    Log Out Through Menu
    Check Log Out Option

Check "Categories- Women"
    Go To "Categories- Women"
    Check Content and Title "Categories- Women"
    Go To Home Page

Check "Specials"
    Go To "Specials"
    Check Content and Title "Specials"
    Go To Home Page

Check "New products"
    Go To "New products"
    check content and title "new products"
    Go To Home Page

Check "Best sellers"
    Go To "Best Sellers"
    Check Content and Title "Best Sellers"
    Go To Home Page

Check "Our stores"
    Go To "Our Stores"
    Check Content and Title "Our Stores"
    Go To Home Page

Check "Contact us"
    Go to "Contact Us"
    Check Content and Title "Contact Us"
    Go To Home Page

Check "Terms and conditions of use"
    Go To "Terms and conditions of use"
    Check Content and Title "Terms and conditions of use"
    Go To Home Page

Check "About us"
    Go To "About Us"
    Check Content and Title "About Us"
    Go To Home Page

Check "Sitemap"
    Go To "Sitemap"
    Check Content and Title "Sitemap"

End Test
    Close Browser



