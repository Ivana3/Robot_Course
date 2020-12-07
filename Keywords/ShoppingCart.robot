*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/ShoppingCart.robot

*** Keywords ***
NavigateToApparelMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${ApparelMenu}
    sleep    1s
    Click Element    ${ApparelMenu}

ClickOnClothingCategory
    sleep    1s
    Wait Until Element Is Visible    ${Clothing}
    sleep    1s
    Click Element    ${Clothing}
    sleep    1s
    Wait Until Element Is Visible    ${Levi's511Jeans}

ClickAtLevi's511JeansProduct
    sleep    1s
    Click Element    ${Levi's511Jeans}
    sleep    1s
    Wait Until Element Is Visible    ${AddToCartButton}

ClickAddToCartButton
    sleep    1s
    Click Element    ${AddToCartButton}
    sleep    1s
    Wait Until Element Is Visible    ${NotificationBar}

ClickAtShoppingCartIcon
    sleep    1s
    Click Element    ${NotificationBar}
    Wait Until Element Contains    ${ShoppingCartTable}    ${ProductText}
