*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Search.robot

*** Variables ***

*** Test Cases ***
RunSuccessfulSearch
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    SearchProduct    Laptop
    SelectAdvancedSearch
    SelectCategory
    SelectAutomaticallySearchSubCategories
    SelectManufacturer
    DefinePriceRange
    SelectProductDescription
    ClickSearch
    [Teardown]    Close Browser

*** Keywords ***
