*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/ShoppingCart.robot

*** Variables ***

*** Test Cases ***
AddProductToCart
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToApparelMenu
    ClickOnClothingCategory
    ClickAtLevi's511JeansProduct
    ClickAddToCartButton
    ClickAtShoppingCartIcon
    [Teardown]    Close Browser

*** Keywords ***
