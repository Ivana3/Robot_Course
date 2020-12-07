*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Homepage.robot
Resource          ../Elements/RegisterPage.robot

*** Keywords ***
NavigateToRegisterPage
    Maximize Browser Window
    Wait Until Element Is Visible    ${RegisterLink}
    Click Element    ${RegisterLink}
    Wait Until Element Is Visible    ${LastnameRegister}
    sleep    1s
