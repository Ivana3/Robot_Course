*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Account.robot

*** Variables ***

*** Test Cases ***
AddAddressToMyAccount
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    EnterValidCredentials    legendone@email.com    123456
    ClickLoginButton
    ClickMyAccountLink
    ClickAddresses
    ClickAddNewButton
    FillTheRequiredFields
    ClickSaveButton
    [Teardown]    Close Browser

*** Keywords ***
