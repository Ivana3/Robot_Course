*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Checkout.robot

*** Keywords ***
NavigateToComputersMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${ComputersMenu}
    Click Element    ${ComputersMenu}
    sleep    1s
    Wait Until Element Is Visible    ${SoftwareCategory}

ClickSoftwareSubcategory
    sleep    1s
    Click Element    ${SoftwareCategory}
    sleep    1s

ClickProductWindows8Pro
    Wait Until Element Is Visible    ${ProductWindows8Pro}
    sleep    1s
    Click Element    ${ProductWindows8Pro}
    sleep    1s
    Wait Until Element Is Visible    ${AddToCartButton}

ClickAddToCartButton
    sleep    1s
    Click Element    ${AddToCartButton}
    sleep    1s
    Wait Until Element Is Visible    ${NotificationBar}

ClickShoppingCartIcon
    sleep    1s
    Click Element    ${NotificationBar}
    sleep    1s
    Wait Until Element Is Visible    ${TermsOfService}

ClickCheckoutButton
    sleep    1s
    Click Element    ${CheckoutButton}
    sleep    1s
    Wait Until Element Is Visible    ${CheckoutAsGuestButton}

ClickCheckoutAsGuestButton
    sleep    1s
    Click Element    ${CheckoutAsGuestButton}
    sleep    1s
    Wait Until Element Is Visible    ${ContinueButton}

ClickContinueButton
    sleep    1s
    Click Element    ${ContinueButton}
    sleep    1s
    Wait Until Element Contains    ${MessageFirstname}    ${MessageFirstnameText}
    Wait Until Element Contains    ${MessageLastname}    ${MessageLastnameText}

AcceptTermOfService
    sleep    1s
    Select Checkbox    ${TermsOfService}
    sleep    1s
    Wait Until Element Is Visible    ${CheckoutButton}
    
FillTheRequiredFieldsWithdata
    [Arguments]    ${email_arg}    ${phone_arg}
    Input Text    ${BillingFirstname}    ${BillingFirstnameValue}
    Wait Until Element Is Visible    ${BillingLastname}
    Input Text    ${BillingLastname}    ${BillingLastnameValue}
    Wait Until Element Is Visible    ${BillingEmail}
    Input Text    ${BillingEmail}    ${email_arg}
    Wait Until Element Is Visible    ${BillingCountry}
    Select From List By Value    ${BillingCountry}    ${BillingCountryValue}
    Wait Until Element Is Visible    ${BillingCity}
    Input Text    ${BillingCity}    ${BillingCityText}
    Wait Until Element Is Visible    ${BillingAddress}
    Input Text    ${BillingAddress}    ${BillingAddressText}
    Wait Until Element Is Visible    ${BillingZipCode}
    Input Text    ${BillingZipCode}    ${BillingZipCodeValue}
    Wait Until Element Is Visible    ${BillingPhoneNumber}
    Input Text    ${BillingPhoneNumber}    ${phone_arg}
    Wait Until Element Is Visible    ${ContinueButton}
    Click Element    ${ContinueButton}

ChooseGroundMethod
    Wait Until Element Is Visible    ${GroundShippingMethod}
    Click Element    ${GroundShippingMethod}
    Wait Until Element Is Visible    ${ShippingMethodContinueButton}
    Click Element    ${ShippingMethodContinueButton}
    Wait Until Element Is Visible    ${PaymentMethod-1}

SelectPayByCredit/DebitCard
    Click Element    ${PaymentMethod-1}
    Wait Until Element Is Visible    ${PaymentMethodContinueButton}
    Click Element    ${PaymentMethodContinueButton}

Don'tEnterAnyDataAndClickContinue
    Wait Until Element Is Visible    ${PaymentInformationContinueButton}
    Click Element    ${PaymentInformationContinueButton}
    sleep    1s
    Wait Until Element Contains    ${MessageError}    ${MessageErrorText}

EnterInvalidDataForCreditCard
    [Arguments]    ${cardnum_arg}    ${year_arg}    ${cardcode_arg}
    Wait Until Element Is Visible    ${SelectCreditCard}
    Select From List By Value    ${CreditCardType}    ${CreditCardTypeValue}
    Wait Until Element Is Visible    ${CardHolder}
    Input Text    ${CardHolder}    ${CardHolderName}
    Wait Until Element Is Visible    ${CardNumber}
    Input Text    ${CardNumber}    ${cardnum_arg}
    Wait Until Element Is Visible    ${ExpirationDate}
    Select From List By Value    ${ExpireMonth}    ${ExpireMonthValue}
    Select From List By Value    ${ExpireYear}    ${year_arg}
    Wait Until Element Is Visible    ${CardCode}
    Input Text    ${CardCode}    ${cardcode_arg}
    Wait Until Element Is Visible    ${PaymentInfoContinueButton}
    Click Element    ${PaymentInfoContinueButton}
    Wait Until Element Contains    ${MessageError}    ${MessageErrorText-1}
