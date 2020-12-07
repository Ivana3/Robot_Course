*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/WishList.robot

*** Keywords ***
NavigateToBooksMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${BooksMenu}
    sleep    1s
    Click Element    ${BooksMenu}
    sleep    1s
    Wait Until Element Is Visible    ${BooksTitle}

CliskAddtoWishListAtPiesBook
    sleep    1s
    Click Element    ${AddToWishList}
    sleep    1s

GoToWishListPage
    Wait Until Element Is Visible    ${BarNotifcation}
    sleep    1s
    Click Element    ${BarNotifcation}
    sleep    1s
    Wait Until Element Is Visible    ${WishListTitle}

ChangeQuantity
    [Arguments]    ${quan_arg}
    sleep    1s
    Input Text    ${Quantity}    ${quan_arg}
    sleep    1s
    Wait Until Element Is Visible    ${UpdateButton}

PressUpdateButton
    sleep    1s
    Click Element    ${UpdateButton}
    sleep    1s
    Wait Until Element Is Visible    ${Quantity}
