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
    
Access checkout address page as guest
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToComputersMenu
    ClickSoftwareSubcategory
    ClickProductWindows8Pro
    ClickAddToCartButton
    ClickShoppingCartIcon
    AcceptTermOfService
    ClickCheckoutButton
    ClickCheckoutAsGuestButton
    [Teardown]    Close Browser

CheckoutAsGuestAndPayWithCreditCard-EnterEmptyCreditCardInformation
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToComputersMenu
    ClickSoftwareSubcategory
    ClickProductWindows8Pro
    ClickAddToCartButton
    ClickShoppingCartIcon
    AcceptTermOfService
    ClickCheckoutButton
    ClickCheckoutAsGuestButton
    FillTheRequiredFieldsWithdata    ivanovivan@email.com    255-522
    ChooseGroundMethod
    SelectPayByCredit/DebitCard
    Don'tEnterAnyDataAndClickContinue
    [Teardown]    Close Browser

CheckoutAsGuestAndEnterInvalidCreditCardInformation
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToComputersMenu
    ClickSoftwareSubcategory
    ClickProductWindows8Pro
    ClickAddToCartButton
    ClickShoppingCartIcon
    AcceptTermOfService
    ClickCheckoutButton
    ClickCheckoutAsGuestButton
    FillTheRequiredFieldsWithdata    ivanovivan@email.com    555-666
    ChooseGroundMethod
    SelectPayByCredit/DebitCard
    EnterInvalidDataForCreditCard    111111111    2021    asv
    [Teardown]    Close Browser

*** Keywords ***
