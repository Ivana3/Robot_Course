*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Account.robot

*** Keywords ***
NavigateToLoginPage
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginLink}
    Click Element    ${LoginLink}
    sleep    1s

EnterValidCredentials
    [Arguments]    ${email_arg}    ${pass_arg}
    Wait Until Element Is Visible    ${UserEmail}
    sleep    1s
    Input Text    ${UserEmail}    ${email_arg}
    Wait Until Element Is Visible    ${UserPassword}
    Input Password    ${UserPassword}    ${pass_arg}
    Wait Until Element Is Visible    ${LoginButton}

ClickLoginButton
    Click Element    ${LoginButton}
    sleep    1s

ClickMyAccountLink
    Wait Until Element Is Visible    ${MyAccountLink}
    Click Element    ${MyAccountLink}
    sleep    1s

ClickAddresses
    Wait Until Element Is Visible    ${AddressesLink}
    Click Element    ${AddressesLink}
    sleep    1s

ClickAddNewButton
    Wait Until Element Is Visible    ${AddNewButton}
    Click Element    ${AddNewButton}
    sleep    1s

FillTheRequiredFields
    Wait Until Element Is Visible    ${AddressFirstname}
    Input Text    ${AddressFirstname}    ${FirstnameText}
    Wait Until Element Is Visible    ${AddressLastname}
    Input Text    ${AddressLastname}    ${LastnameText}
    Wait Until Element Is Visible    ${AddressEmail}
    Input Text    ${AddressEmail}    ${EmailText}
    Wait Until Element Is Visible    ${Country}
    Select From List By Value    ${AddressCountry}    ${CountryText}
    Wait Until Element Is Visible    ${AddressCity}
    Input Text    ${AddressCity}    ${CityText}
    Wait Until Element Is Visible    ${Address}
    Input Text    ${Address}    ${AddressText}
    Wait Until Element Is Visible    ${ZipCode}
    Input Text    ${ZipCode}    ${ZipCodeText}
    Wait Until Element Is Visible    ${PhoneNumber}
    Input Text    ${PhoneNumber}    ${PhoneNumberText}

ClickSaveButton
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Wait Until Element Is Visible    ${Info}
