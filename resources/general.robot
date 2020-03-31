# General keywords to changing bookmarks and elements on Web page
# Author: Patrycja Łukaszewicz

*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Go To Specific Menu
    [Arguments]  ${tab_page_xpath}  ${expected_category}
    Wait Until Page Contains Element  xpath=/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img
    Wait Until Keyword Succeeds  1 min  2 sec  Element Should Be Visible  xpath=${tab_page_xpath}
    Click Element  xpath=${tab_page_xpath}
    Sleep  0.5s
    Element Should Be Visible  xpath=${expected_category}

Set Categories Chechbox
    [Arguments]  @{atribut_value}
    :FOR  ${categories}  IN  @{atribut_value}
    \  Run Keyword If  '${categories}' == 'tops'  Click Button  id=layered_category_4
    \  Run Keyword If  '${categories}' == 'dresses'  Click Button  id=layered_category_8
    \  Run Keyword If  '${categories}' == 'casual dresses'  Click Button  id=layered_category_9
    \  Run Keyword If  '${categories}' == 'evening dresses'  Click Button  id=layered_category_10
    \  Run Keyword If  '${categories}' == 'summer dresses'  Click Button  id=layered_category_11

Set Size Checkbox
    [Arguments]  @{atribut_value}
    :FOR  ${size}  IN  @{atribut_value}
    \  Run Keyword If  '${size}' == 'S'  Click Button  id=layered_id_attribute_group_1
    \  Run Keyword If  '${size}' == 'M'  Click Button  id=layered_id_attribute_group_2
    \  Run Keyword If  '${size}' == 'L'  Click Button  id=layered_id_attribute_group_3

Set Compositions Checkbox
    [Arguments]  @{atribut_value}
    :FOR  ${compositions}  IN  @{atribut_value}
    \  Run Keyword If  '${compositions}' == 'cotton'  Click Button  id=layered_id_feature_5
    \  Run Keyword If  '${compositions}' == 'polyester'  Click Button  id=layered_id_feature_1
    \  Run Keyword If  '${compositions}' == 'viscose'  Click Button  id=layered_id_feature_3

Set Styles Checkbox
    [Arguments]  @{atribut_value}
    :FOR  ${styles}  IN  @{atribut_value}
    \  Run Keyword If  '${styles}' == 'casual'  Click Button  id=layered_id_feature_11
    \  Run Keyword If  '${styles}' == 'dressy'  Click Button  id=layered_id_feature_16
    \  Run Keyword If  '${styles}' == 'girly'  Click Button  id=layered_id_feature_13

Set Properties Checkox
    [Arguments]  @{atribut_value}
    :FOR  ${properties}  IN  @{atribut_value}
    \  Run Keyword If  '${properties}' == 'Colorful Dress'  Click Button  id=layered_id_feature_18
    \  Run Keyword If  '${properties}' == 'Maxi Dress'  Click Button  id=layered_id_feature_21
    \  Run Keyword If  '${properties}' == 'Midi Dress'  Click Button  id=layered_id_feature_20
    \  Run Keyword If  '${properties}' == 'Short Dress'  Click Button  id=layered_id_feature_19
    \  Run Keyword If  '${properties}' == 'Short Sleeve'  Click Button  id=layered_id_feature_17

Set Availability Checkbox
    [Arguments]  ${availability}
    Run Keyword If  '${availability}' == 'In stock'  Click Button id=layered_quantity_1

Set Manufacturer Checkbox
    [Arguments]  ${manufacturer}
    Run Keyword If  '${manufacturer}' == 'Fashion Manufacturer'  Click Button  id=layered_manufacturer_1

Set Condition Checkbox
    [Arguments]  ${condition}
    Run Keyword If  '${condition}' == 'new'  Click Button  id=layered_condition_new

Set Price
    [Arguments]

