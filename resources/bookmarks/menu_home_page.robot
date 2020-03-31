#Autor: Michał Kłonowski
*** Settings ***
Documentation    Keywords usable to moving to the subpage using menu on the bottom of home page

*** Keywords ***
Go To Home Page
    Click Image  xpath=/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img
    #uzywa kliknięcia w obrazek

Go To "My Orders"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[5]/div/ul/li[1]/a

Check Content and Title "My Orders"
    Title Should Be  title=Order history - My Store
    Page Should Contain   text=Here are the orders you've placed since your account was created.

Go To "My Credit Slips"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[5]/div/ul/li[2]/a

Check Content and Title "My Credit Slips"
    Title Should Be  title=Order slip - My Store
    Page Should Contain   text=Credit slips you have received after canceled orders.

Go To "My Address"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[5]/div/ul/li[3]/a

Check Content and Title "My Address"
    Title Should Be  title=Addresses - My Store
    Page Should Contain   text=Your addresses are listed below.

Go To "My Presonal Info"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[5]/div/ul/li[4]/a

Check Content and Title "My Personal Info"
    Title Should Be  title=Identity - My Store
    Element Should Be Visible   css=#firstname
    Element Should Be Visible   css=#passwd

Log Out Through Menu
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[5]/div/ul/li[5]/a

Check Log Out Option
    Element Should Be Visible   xpath=/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a

Go To "Categories- Women"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[2]/div/div/ul/li/a

Check Content and Title "Categories- Women"
    Page Should Contain   text=You will find here all woman fashion collections.
    Title Should Be  title=Women - My Store

Go To "Specials"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[1]/a

Check Content and Title "Specials"
    Page Should Contain  text=Price drop
    Title Should Be   title=Prices drop - My Store

Go To "New products"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[2]/a

Check Content and Title "New Products"
    Page Should Contain  text=New products
    Title Should Be  title=New products - My Store

Go To "Best Sellers"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[3]/a

Check Content and Title "Best Sellers"
    Page Should Contain  text=Best sellers
    Title Should Be  title=Best sales - My Store

Go To "Our Stores"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[4]/a

Check Content and Title "Our Stores"
    Page Should Contain  text=Enter a location (e.g. zip/postal code, address, city or country) in order to find the nearest stores.
    Title Should Be  title=Stores - My Store

Go to "Contact Us"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[5]/a

Check Content and Title "Contact Us"
    Page Should Contain  text=Customer service - Contact us
    Title Should Be  title=Contact us - My Store

Go To "Terms and conditions of use"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[6]/a

Check Content and Title "Terms and conditions of use"
    Title Should Be  title=Terms and conditions of use - My Store
    Page Should Contain  text=Rule 1
    Page Should Contain  text=Rule 2

Go To "About Us"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[7]/a

Check Content and Title "About Us"
    Title Should Be  title=About us - My Store
    Page Should Contain  text=Testimonials
    Page Should Contain  text=Our team

Go To "Site Map"
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[8]/a

Check Content and Title "Sitemap"
    Title Should Be  title=Sitemap - My Store
    Page Should Contain  text=Our offers
    Page Should Contain  text=Your Account
    Page Should Contain  text=Pages


