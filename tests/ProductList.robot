*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/ProductList.robot

*** Variables ***

*** Test Cases ***
VerifyFilterOption
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToComputersMenu
    ClickNotebooksCategory
    SelectI5CPU
    Select8GbRAM
    [Teardown]    Close Browser

*** Keywords ***
