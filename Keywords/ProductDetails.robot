*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/ProductDetails.robot

*** Keywords ***
ClickElegantNecklace
    sleep    1s
    Click Element    ${ElegantGemstoneNecklace}
    sleep    1s
    Wait Until Element Is Visible    ${NecklaceTitle}

EnterStartRentDate
    [Arguments]    ${startdate_arg}
    sleep    1s
    Input Text    ${StartDate}    ${startdate_arg}
    Wait Until Element Is Visible    ${EndDate}

EnterEndRentDate
    [Arguments]    ${enddate_arg}
    Input Text    ${EndDate}    ${enddate_arg}
    Wait Until Element Is Visible    ${Quantity}

EnterQuantity
    Input Text    ${Quantity}    ${QuantityText}
    Wait Until Element Is Visible    ${RentButton}

PressRentButton
    Click Element    ${RentButton}
    Wait Until Element Is Visible    ${NotificationBar}

NavigateToJewelryMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${JewelryMenu}
    sleep    1s
    Click Element    ${JewelryMenu}
    sleep    1s
    Wait Until Element Is Visible    ${ElegantGemstoneNecklace}
