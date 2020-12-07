*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Homepage.robot
Resource          ../Keywords/RegisterPage.robot

*** Variables ***

*** Test Cases ***
RegisterNewUserWithEmptyFirstnameField
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToRegisterPage
    Fill In Personal DataWithOutFirstName    timkim@email.com    123456
    ClickRegisterButton
    [Teardown]    Close Browser

RegisterNewUserWithValidEmail
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToRegisterPage
    Fill In Personal Data    janedoe2@email.com
    ClickRegisterButtonComplete
    [Teardown]    Close Browser

*** Keywords ***
