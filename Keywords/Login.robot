*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Login.robot
Resource          ../Resources/TestData.robot
Resource          ../Elements/Homepage.robot

*** Keywords ***
AddEmailAndPassword
    [Arguments]    ${email_arg}    ${pass_arg}
    Wait Until Element Is Visible    ${UserEmail}
    Input Text    ${UserEmail}    ${email_arg}
    Wait Until Element Is Visible    ${UserPassword}
    Input Password    ${UserPassword}    ${pass_arg}
    Wait Until Element Is Visible    ${LoginButton}

ClickLoginButton
    Wait Until Element Is Visible    ${LoginButton}
    Click Element    ${LoginButton}
    Wait Until Element Contains    ${LogOut}    ${LogOutText}

NavigateToLoginPage
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginLink}
    Click Element    ${LoginLink}
    Wait Until Element Is Visible    ${UserEmail}
    sleep    1s
