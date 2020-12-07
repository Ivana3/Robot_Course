*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Checkout.robot

*** Keywords ***
NavigateToComputersMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${ComputersMenu}
    Click Element    ${ComputersMenu}
    sleep    1s
    Wait Until Element Is Visible    ${SoftwareCategory}

ClickSoftwareSubcategory
    sleep    1s
    Click Element    ${SoftwareCategory}
    sleep    1s

ClickProductWindows8Pro
    Wait Until Element Is Visible    ${ProductWindows8Pro}
    sleep    1s
    Click Element    ${ProductWindows8Pro}
    sleep    1s
    Wait Until Element Is Visible    ${AddToCartButton}

ClickAddToCartButton
    sleep    1s
    Click Element    ${AddToCartButton}
    sleep    1s
    Wait Until Element Is Visible    ${NotificationBar}

ClickShoppingCartIcon
    sleep    1s
    Click Element    ${NotificationBar}
    sleep    1s
    Wait Until Element Is Visible    ${TermsOfService}

ClickCheckoutButton
    sleep    1s
    Click Element    ${CheckoutButton}
    sleep    1s
    Wait Until Element Is Visible    ${CheckoutAsGuestButton}

ClickCheckoutAsGuestButton
    sleep    1s
    Click Element    ${CheckoutAsGuestButton}
    sleep    1s
    Wait Until Element Is Visible    ${ContinueButton}

ClickContinueButton
    sleep    1s
    Click Element    ${ContinueButton}
    sleep    1s
    Wait Until Element Contains    ${MessageFirstname}    ${MessageFirstnameText}
    Wait Until Element Contains    ${MessageLastname}    ${MessageLastnameText}

AcceptTermOfService
    sleep    1s
    Select Checkbox    ${TermsOfService}
    sleep    1s
    Wait Until Element Is Visible    ${CheckoutButton}
