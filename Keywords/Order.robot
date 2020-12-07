*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Order.robot
Resource          ../Elements/Account.robot
Resource          ../Elements/Checkout.robot
Resource          ../Elements/Homepage.robot
Resource          ../Elements/Login.robot
Resource          ../Elements/ProductDetails.robot
Resource          ../Elements/ProductList.robot
Resource          ../Elements/Search.robot
Resource          ../Elements/ShoppingCart.robot

*** Keywords ***
NavigateToLoginPage
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginLink}
    Click Element    ${LoginLink}
    sleep    1s
    Wait Until Element Is Visible    ${UserEmail}

LoginAsRegisteredUser
    [Arguments]    ${email_arg}    ${pass_arg}
    sleep    1s
    Input Text    ${UserEmail}    ${email_arg}
    Wait Until Element Is Visible    ${UserPassword}
    Input Password    ${UserPassword}    ${pass_arg}
    Wait Until Element Is Visible    ${LoginButton}
    Click Element    ${LoginButton}
    sleep    1s
    Wait Until Element Is Visible    ${MyAccountLink}

NavigateToMyAccount
    Click Element    ${MyAccountLink}
    sleep    1s
    Wait Until Element Is Visible    ${AddressesLink}

AddUserAddress
    [Arguments]    ${email_arg}    ${address_arg}
    Click Element    ${AddressesLink}
    sleep    1s
    Wait Until Element Is Visible    ${AddNewButton}
    Click Element    ${AddNewButton}
    sleep    1s
    Wait Until Element Is Visible    ${AddressFirstname}
    Input Text    ${AddressFirstname}    ${FirstnameText}
    Wait Until Element Is Visible    ${AddressLastname}
    Input Text    ${AddressLastname}    ${LastnameText}
    Wait Until Element Is Visible    ${AddressEmail}
    Input Text    ${AddressEmail}    ${email_arg}
    Wait Until Element Is Visible    ${Country}
    Select From List By Value    ${AddressCountry}    ${CountryText}
    Wait Until Element Is Visible    ${AddressCity}
    Input Text    ${AddressCity}    ${CityText}
    Wait Until Element Is Visible    ${Address}
    Input Text    ${Address}    ${address_arg}
    Wait Until Element Is Visible    ${ZipCode}
    Input Text    ${ZipCode}    ${ZipCodeText}
    Wait Until Element Is Visible    ${PhoneNumber}
    Input Text    ${PhoneNumber}    ${PhoneNumberText}
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Wait Until Element Is Visible    ${Info}

SearchProduct
    [Arguments]    ${product_arg}
    sleep    1s
    Wait Until Element Is Visible    ${SearchBar}
    Click Element    ${SearchBar}
    Input Text    ${SearchBar}    ${product_arg}
    Wait Until Element Is Visible    ${SearchButton}
    Click Element    ${SearchButton}
    Wait Until Element Is Visible    ${SearchTitle}
    sleep    1s
    Select Checkbox    ${SelectAdvancedSearch}
    sleep    1s
    Wait Until Element Is Visible    ${Category}
    Select From List By Value    ${CategoryName}    ${CategoryNameText}
    Wait Until Element Is Visible    ${SelectAutomatically}
    Select Checkbox    ${SelectAutomatically}
    Wait Until Element Is Visible    ${SelectCheckbox}
    Select Checkbox    ${SelectCheckbox}
    Wait Until Element Is Visible    ${SearchLastButton}
    sleep    1s
    Click Element    ${SearchLastButton}
    Wait Until Element Is Visible    ${ProductItem}
    sleep    1s

AddItemToCart
    Click Element    ${ProductItem}
    sleep    1s
    Wait Until Element Is Visible    ${AddtoCart41}
    sleep    1s
    Click Element    ${AddtoCart41}
    sleep    1s
    Wait Until Element Is Visible    ${NotificationBar}
    sleep    1s

ProceedToCheckout
    Click Element    ${NotificationBar}
    Wait Until Element Contains    ${ShoppingCartTable}    Flower Girl Bracelet
    sleep    1s
    Wait Until Element Is Visible    ${TermsOfService}
    sleep    1s
    Select Checkbox    ${TermsOfService}
    sleep    1s
    Wait Until Element Is Visible    ${CheckoutButton}
    Click Element    ${CheckoutButton}
    Wait Until Element Is Visible    ${AddressContinueButton}

SelectShippingMethod
    sleep    1s
    Click Element    ${AddressContinueButton}
    sleep    1s
    Wait Until Element Is Visible    ${ShippingMethods}
    Click Element    ${ShippingOptionGround}
    Wait Until Element Is Visible    ${ShippingContinueButton}
    Click Element    ${ShippingContinueButton}
    sleep    1s
    Wait Until Element Is Visible    ${PaymentMethod}

SelectPaymentMethod
    Click Element    ${CreditCard}
    Wait Until Element Is Visible    ${PaymentMethodContinueButton}
    sleep    1s
    Click Element    ${PaymentMethodContinueButton}
    Wait Until Element Is Visible    ${PaymentInformation}

EnterCardDetails
    [Arguments]    ${cardnumber_arg}
    sleep    1s
    Select From List By Value    ${CreditCartType}    ${CreditCardText}
    Wait Until Element Is Visible    ${CardholderName}
    Input Text    ${CardholderName}    ${CardholderText}
    Wait Until Element Is Visible    ${CardNumber}
    Input Text    ${CardNumber}    ${cardnumber_arg}
    Wait Until Element Is Visible    ${ExpirationDate}
    Select From List By Value    ${ExpireMonth}    ${ExpireMonthValue}
    Select From List By Value    ${ExpireYear}    ${ExpireYearValue}
    Wait Until Element Is Visible    ${CardCode}
    Input Text    ${CardCode}    ${CardCodeValue}
    Wait Until Element Is Visible    ${PaymentInformationContinueButton}
    Click Element    ${PaymentInformationContinueButton}
    Wait Until Element Is Visible    ${ConfirmOrderButton}

ClickConfirmOrderButton
    sleep    1s
    Click Element    ${ConfirmOrderButton}
    sleep    1s
    Wait Until Element Contains    ${ConfirmOrderTitle}    ${ConfirmOrderText}
    Wait Until Element Contains    ${OrderNumber}    ${OrderNumberValue}
