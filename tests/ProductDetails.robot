*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/ProductDetails.robot

*** Variables ***

*** Test Cases ***
TestRentingCapability
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToJewelryMenu
    ClickElegantNecklace
    EnterStartRentDate    12/01/2020
    EnterEndRentDate    12/03/2020
    EnterQuantity
    PressRentButton
    [Teardown]    Close Browser

*** Keywords ***
