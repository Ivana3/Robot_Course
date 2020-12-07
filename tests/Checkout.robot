*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Checkout.robot

*** Variables ***

*** Test Cases ***
Check if error message is displayed when user doesn't enter data while checking out as guest
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToComputersMenu
    ClickSoftwareSubcategory
    ClickProductWindows8Pro
    ClickAddToCartButton
    ClickShoppingCartIcon
    AcceptTermOfService
    ClickCheckoutButton
    ClickCheckoutAsGuestButton
    ClickContinueButton
    [Teardown]    Close Browser

*** Keywords ***
