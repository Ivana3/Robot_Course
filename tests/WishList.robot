*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/WishList.robot

*** Variables ***

*** Test Cases ***
Check if it is possible to change the quantity of the product in wish list
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToBooksMenu
    CliskAddtoWishListAtPiesBook
    GoToWishListPage
    ChangeQuantity    5
    PressUpdateButton
    [Teardown]    Close Browser

*** Keywords ***
