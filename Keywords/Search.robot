*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Search.robot
Resource          ../Elements/Homepage.robot

*** Keywords ***
ClickSearch
    Click Element    ${SearchLastButton}
    Wait Until Element Contains    ${ProductTitle}    ${ProductTitleText}

SearchProduct
    [Arguments]    ${prod_arg}
    Maximize Browser Window
    Wait Until Element Is Visible    ${SearchBar}
    Click Element    ${SearchBar}
    Input Text    ${SearchBar}    ${prod_arg}
    Wait Until Element Is Visible    ${SearchButton}
    Click Element    ${SearchButton}

SelectProductDescription
    Select Checkbox    ${SelectCheckbox}
    Wait Until Element Is Visible    ${SearchLastButton}

DefinePriceRange
    Input Text    ${PriceFrom}    ${PriceFromText}
    Wait Until Element Is Visible    ${PriceTo}
    Input Text    ${PriceTo}    ${PriceToText}
    Wait Until Element Is Visible    ${SelectCheckbox}

SelectManufacturer
    Select From List By Value    ${ManufacturerName}    ${ManufacturerText}
    Wait Until Element Is Visible    ${PriceFrom}

SelectAutomaticallySearchSubCategories
    Select Checkbox    ${SelectAutomatically}
    Wait Until Element Is Visible    ${Manufacturer}

SelectCategory
    Select From List By Value    ${CategoryName}    ${CategoryText}
    Wait Until Element Is Visible    ${SelectAutomatically}

SelectAdvancedSearch
    Wait Until Element Is Visible    ${SearchTitle}
    sleep    1s
    Select Checkbox    ${SelectAdvancedSearch}
    sleep    1s
    Wait Until Element Is Visible    ${Category}
