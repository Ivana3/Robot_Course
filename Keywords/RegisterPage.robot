*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/RegisterPage.robot
Resource          ../Resources/TestData.robot

*** Variables ***

*** Keywords ***
Fill In Personal DataWithOutFirstName
    [Arguments]    ${email_arg}    ${pass_arg}
    Input Text    ${LastnameRegister}    ${LastnameText}
    Wait Until Element Is Visible    ${DateOfBirth}
    Select From List By Value    ${Day}    ${DayText}
    Wait Until Element Is Visible    ${Month}
    Select From List By Value    ${Month}    ${MonthText}
    Wait Until Element Is Visible    ${Year}
    Select From List By Value    ${Year}    ${YearText}
    Wait Until Element Is Visible    ${RegisterEmail}
    Input Text    ${RegisterEmail}    ${email_arg}
    Wait Until Element Is Visible    ${Company}
    Input Text    ${Company}    ${CompanyText}
    Wait Until Element Is Visible    ${CheckboxNewsletter}
    Select Checkbox    ${CheckboxNewsletter}
    Wait Until Element Is Visible    ${RegisterPassword}
    Input Password    ${RegisterPassword}    ${pass_arg}
    Wait Until Element Is Visible    ${ConfirmPassword}
    Input Password    ${ConfirmPassword}    ${UserPasswordText}

ClickRegisterButton
    Wait Until Element Is Visible    ${RegisterButton}
    Click Element    ${RegisterButton}
    Wait Until Element Contains    ${FirstNameError}    ${FirstNameErrorText}

Fill In Personal Data
    [Arguments]    ${email_arg}
    Input Text    ${FirstnameRegister}    ${FirstnameText}
    Wait Until Element Is Visible    ${LastnameRegister}
    Input Text    ${LastnameRegister}    ${LastnameText}
    Wait Until Element Is Visible    ${DateOfBirth}
    Select From List By Value    ${Day}    ${DayText}
    Wait Until Element Is Visible    ${Month}
    Select From List By Value    ${Month}    ${MonthText}
    Wait Until Element Is Visible    ${Year}
    Select From List By Value    ${Year}    ${YearText}
    Wait Until Element Is Visible    ${RegisterEmail}
    Input Text    ${RegisterEmail}    ${email_arg}
    Wait Until Element Is Visible    ${Company}
    Input Text    ${Company}    ${CompanyText}
    Wait Until Element Is Visible    ${CheckboxNewsletter}
    Select Checkbox    ${CheckboxNewsletter}
    Wait Until Element Is Visible    ${RegisterPassword}
    Input Password    ${RegisterPassword}    ${UserPasswordText}
    Wait Until Element Is Visible    ${ConfirmPassword}
    Input Password    ${ConfirmPassword}    ${UserPasswordText}

ClickRegisterButtonComplete
    Wait Until Element Is Visible    ${RegisterButton}
    Click Element    ${RegisterButton}
    Wait Until Element Contains    ${RegisterCompleted}    ${RegisterCompletedText}
