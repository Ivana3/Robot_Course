*** Variables ***
${ComputersMenu}    //div[@class="header-menu"]/ul/li/a[@href="/computers"]
${SoftwareCategory}    //div[@class="picture"]/a/img[@alt="Picture for category Software"]
${ProductWindows8Pro}    //div[@class="picture"]/a/img[@alt="Picture of Windows 8 Pro"]
${AddToCartButton}    //*[@id="add-to-cart-button-11"]
${NotificationBar}    //div[@class="bar-notification success"]/p/a[@href="/cart"]
${TermsOfService}    //*[@id="termsofservice"]
${CheckoutButton}    //*[@id="checkout"]
${CheckoutAsGuestButton}    //div[@class="buttons"]/input[@value="Checkout as Guest"]
${ContinueButton}    //*[@id="billing-buttons-container"]/input
${MessageFirstname}    //*[@id="billing-new-address-form"]/div/div/div[1]/span[2]
${MessageFirstnameText}    First name is required.
${MessageLastname}    //*[@id="billing-new-address-form"]/div/div/div[2]/span[2]
${MessageLastnameText}    Last name is required.
${BillingFirstname}    //*[@id="BillingNewAddress_FirstName"]
${BillingFirstnameValue}    Ivan
${BillingLastname}    //*[@id="BillingNewAddress_LastName"]
${BillingLastnameValue}    Ivanov
${BillingEmail}    //*[@id="BillingNewAddress_Email"]
${BillingCountry}    //*[@id="BillingNewAddress_CountryId"]
${BillingCountryValue}    219
${BillingCity}    //*[@id="BillingNewAddress_City"]
${BillingCityText}    Moscow
${BillingAddress}    //*[@id="BillingNewAddress_Address1"]
${BillingAddressText}    Karposh
${BillingZipCode}    //*[@id="BillingNewAddress_ZipPostalCode"]
${BillingZipCodeValue}    101000
${BillingPhoneNumber}    //*[@id="BillingNewAddress_PhoneNumber"]
${GroundShippingMethod}    //*[@id="shippingoption_0"]
${ShippingMethodContinueButton}    //*[@id="shipping-method-buttons-container"]/input
${PaymentMethod-1}    //*[@id="paymentmethod_1"]
${PaymentMethodContinueButton}    //*[@id="payment-method-buttons-container"]/input
${PaymentInformationContinueButton}    //*[@id="payment-info-buttons-container"]/input
${MessageError}    //div[@class="message-error validation-summary-errors"]/ul
${MessageErrorText}    Enter cardholder name
${SelectCreditCard}    //div[@class="info"]/table/tbody/tr/td/label[@for="CreditCardTypes"]
${CreditCardType}    //*[@id="CreditCardType"]
${CreditCardTypeValue}    MasterCard
${CardHolder}     //*[@id="CardholderName"]
${CardHolderName}    Ivan Ivanov
${CardNumber}     //*[@id="CardNumber"]
${CardNumberValue}    11111111111
${ExpirationDate}    //div[@class="info"]/table/tbody/tr/td/label[@for="ExpireMonth"]
${ExpireMonth}    //*[@id="ExpireMonth"]
${ExpireMonthValue}    12
${ExpireYear}     //*[@id="ExpireYear"]
${CardCode}       //*[@id="CardCode"]
${PaymentInfoContinueButton}    //*[@id="payment-info-buttons-container"]/input
${MessageErrorText-1}    Wrong card code
