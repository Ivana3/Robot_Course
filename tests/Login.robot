*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Homepage.robot
Resource          ../Resources/TestData.robot
Resource          ../Keywords/Login.robot

*** Variables ***

*** Test Cases ***
LoginWithValidCredentials
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    AddEmailAndPassword    30112020160010@test.com    123456
    ClickLoginButton
    [Teardown]    Close Browser

*** Keywords ***
