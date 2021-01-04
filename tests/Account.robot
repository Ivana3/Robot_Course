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
   
Change the old password from My acount - Change password section
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    EnterValidCredentials    12122020120010@email.com    123456
    ClickLoginButton
    ClickMyAccountLink
    ClickChangePasswordLink
    EnterOldPassword    123456
    EnterNewPassword    1234567
    EnterConfirmPassword    1234567
    ClickChangePasswordButton
    [Teardown]    Close Browser

Check if Reward points link leads to My account - My account - Reward points section
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    EnterValidCredentials    14122020120010@email.com    123456
    ClickLoginButton
    ClickMyAccountLink
    ClickRewardPointsLink
    [Teardown]    Close Browser

Change the password from My acount - Change password section with different confirm password
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    EnterValidCredentials    legendone@email.com    1234567
    ClickLoginButton
    ClickMyAccountLink
    ClickChangePasswordLink
    EnterOldPassword    1234567
    EnterNewPassword    123456
    EnterConfirmPassword    888888
    ClickChangePasswordButton-Error
    [Teardown]    Close Browser

Check if My product reviews link leads to My account - My product reviews section
    [Setup]    Open Browser    https://demo.nopcommerce.com    chrome
    NavigateToLoginPage
    EnterValidCredentials    15122020120010@test.com    123456
    ClickLoginButton
    ClickMyAccountLink
    ClickMyProductReviewsLink
    [Teardown]    Close Browser

*** Keywords ***
