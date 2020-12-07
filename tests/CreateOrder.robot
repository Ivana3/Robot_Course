*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Order.robot

*** Variables ***

*** Test Cases ***
CreateOrderForProduct
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    ${login_text}    Get Text    ${LoginLink}
    Run Keyword If    '${login_text}'=='Log in'    LoginAsRegisteredUser    30112020160010@test.com    123456
    ...    ELSE    Log    Veke ste logirani
    NavigateToMyAccount
    AddUserAddress    30112020160010@test.com    Karposh
    SearchProduct    Jewelry
    AddItemToCart
    ProceedToCheckout
    SelectShippingMethod
    SelectPaymentMethod
    EnterCardDetails    88888888
    ClickConfirmOrderButton
    [Teardown]    Close Browser

*** Keywords ***
