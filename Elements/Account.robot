*** Variables ***
${LoginLink}      //div[@class="header-links"]/ul/li/a[@class="ico-login"]
${UserEmail}      //*[@id="Email"]
${UserPassword}    //*[@id="Password"]
${LoginButton}    //div[@class="buttons"]/input[@value="Log in"]
${MyAccountLink}    //div[@class="header-links"]/ul/li/a[@class="ico-account"]
${AddressesLink}    //div[@class="listbox"]/ul/li/a[@href="/customer/addresses"]
${AddNewButton}    //div[@class="add-button"]/input[@value="Add new"]
${AddressFirstname}    //*[@id="Address_FirstName"]
${AddressLastname}    //*[@id="Address_LastName"]
${AddressEmail}    //*[@id="Address_Email"]
${Country}        //div[@class="inputs"]/label[@for="Address_CountryId"]
${AddressCountry}    //*[@id="Address_CountryId"]
${AddressCity}    //*[@id="Address_City"]
${Address}        //*[@id="Address_Address1"]
${ZipCode}        //*[@id="Address_ZipPostalCode"]
${PhoneNumber}    //*[@id="Address_PhoneNumber"]
${SaveButton}     //div[@class="buttons"]/input[@value="Save"]
${Info}           //div[@class="title"]
${FirstnameText}    Tom
${LastnameText}    Legend
${EmailText}      legendone@email.com
${CountryText}    11
${CityText}       Bitola
${AddressText}    Karposh
${ZipCodeText}    7000
${PhoneNumberText}    047222333
${ChangePasswordLink}    //div[@class="listbox"]/ul/li/a[@href="/customer/changepassword"]
${OldPasswordTitle}    //div[@class="inputs"]/label[@for="OldPassword"]
${OldPassword}    //*[@id="OldPassword"]
${NewPassword}    //*[@id="NewPassword"]
${ConfirmNewPassword}    //*[@id="ConfirmNewPassword"]
${ChangePasswordButton}    //div[@class="buttons"]/input[@value="Change password"]
${ChangePasswordResult}    //div[@class="result"]
${ChangePasswordText}    Password was changed
${RewardPointsLink}    //div[@class="listbox"]/ul/li/a[@href="/rewardpoints/history"]
${CurrentBalance}    //div[@class="reward-points-overview"]/div[@class="current-balance"]
${CurrentBalanceText}    Your current balance is 0 reward points ($0.00).
${RewardPointsHistory}    //div[@class="section reward-points-history"]/div[@class="no-data"]
${PointsHistoryText}    There is no balance history yet
${ConfirmPasswordError}    //*[@id="ConfirmNewPassword-error"]
${ConfirmPasswordErrorText}    The new password and confirmation password do not match.
${ProductReviewsLink}    //div[@class="listbox"]/ul/li/a[@href="/customer/productreviews"]
${MyProductReviewSection}    //div[@class="page-body"]/div[@class="no-data"]
${MyProductReviewSectionText}    You haven't written any reviews yet
