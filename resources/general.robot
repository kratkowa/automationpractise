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

Click Specific Checkbox
    [Arguments]  ${atribut_name}  ${atribut_xpath}
    Run Keyword If  '${atribut_name}' == '${atribut_value}'  Click Element  xpath=${atribut_xpath}

Set Categories Chechbox
    [Arguments]  @{categories}
    Click Specific Checkbox  ${categories}  top  atribut_xpath=//*[@id="layered_category_4"]
    Click Specific Checkbox  ${categories}  dresses  atribut_xpath=//*[@id="layered_category_8"]
    Click Specific Checkbox  ${categories}  casual dresses  atribut_xpath=//*[@id="layered_category_9"]
    Click Specific Checkbox  ${categories}  evening dresses  atribut_xpath=//*[@id="layered_category_10"]
    Click Specific Checkbox  ${categories}  summer dresses  atribut_xpath=//*[@id="layered_category_11"]

Set Size Checkbox
    [Arguments]  @{size}
    Click Specific Checkbox  ${size}  S  atribut_xpath=//*[@id="layered_id_attribute_group_1"]
    Click Specific Checkbox  ${size}  M  atribut_xpath=//*[@id="layered_id_attribute_group_2"]
    Click Specific Checkbox  ${size}  L  atribut_xpath=//*[@id="layered_id_attribute_group_3"]

Set Compositions Checkbox
    [Arguments]  @{compositions}
    Click Specific Checkbox  ${compositions}  cotton  atribut_xpath=//*[@id="layered_id_feature_5"]
    Click Specific Checkbox  ${compositions}  polyester  atribut_xpath=//*[@id="layered_id_feature_1"]
    Click Specific Checkbox  ${compositions}  viscose  atribut_xpath=//*[@id="layered_id_feature_3"]

Set Styles Checkbox
    [Arguments]  @{styles}
    Click Specific Checkbox  @{styles}  casual  atribut_xpath=//*[@id="layered_id_feature_11"]
    Click Specific Checkbox  @{styles}  dressy  atribut_xpath=//*[@id="layered_id_feature_16"]
    Click Specific Checkbox  @{styles}  girly  atribut_xpath=//*[@id="layered_id_feature_13"]

Set Properties Checkox
    [Arguments]  @{properties}
    Click Specific Checkbox  ${properties}  Colorful Dress  atribut_xpath=//*[@id="layered_id_feature_18"]
    Click Specific Checkbox  ${properties}  Maxi Dress  atribut_xpath=//*[@id="layered_id_feature_21"]
    Click Specific Checkbox  ${properties}  Midi Dress  atribut_xpath=//*[@id="layered_id_feature_20"]
    Click Specific Checkbox  ${properties}  Short Dress  atribut_xpath=//*[@id="layered_id_feature_19"]
    Click Specific Checkbox  ${properties}  Short Sleeve  atribut_xpath=//*[@id="layered_id_feature_17"]

Set Availability Checkbox
    [Arguments]  ${availability}
    Click Specific Checkbox  ${availability}  In stock  atribut_xpath=//*[@id="layered_quantity_1"]

Set Manufacturer Checkbox
    [Arguments]  ${manufacturer}
    Click Specific Checkbox  ${manufacturer}  Fashion Manufacturer  atribut_xpath=//*[@id="layered_manufacturer_1"]

Set Condition Checkbox
    [Arguments]  ${condition}
    Click Specific Checkbox  ${condition}  new  atribut_xpath=//*[@id="layered_condition_new"]

Set Price
    [Arguments]

