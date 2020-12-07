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
