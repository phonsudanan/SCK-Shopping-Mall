*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers

*** Test Cases ***
TSS-SCK_SHP001
    Open browser                        https://www.google.co.th/      cg
    Maximize Browser Window
    
	Click Element	                    id=shopNowButton 
	Wait Until Page Contains Element	id=productBurberryBritSheer
	Click Element	                    id=productBurberryBritSheer

    Wait Until Page Contains Element    id=productBurberry
    Element Text Should Be              id=productBurberry             Burberry Brit Sheer Eau De Toilette
    Element Text Should Be              id=productPrice                1,790.00
    Element Text Should Be              id=productPoint                17

    Click Element                       id=addBurberryBritSheer

    Click Element                       id=shoppingCart
    Wait Until Page Contains Element    id=orderList

    Element Text Should Be              id=productNameBurberryBritSheer           Burberry Brit Sheer Eau De Toilette
    Element Text Should Be              id=productPrice                1,790.00
    Element Text Should Be              id=productQuantity             1
    Element Text Should Be              id=productPoint                17
    Element Text Should Be              id=totalPrice                  1,790.00

    Element Text Should Be              id=pointBalance                161

    Input Text                          id=inputEnterPoint             161
    Press Keys                          id=inputEnterPoint             ENTER

    Element Text Should Be              id=productNameBurberryBritSheer           Burberry Brit Sheer Eau De Toilette
    Element Text Should Be              id=productPrice                1,790.00
    Element Text Should Be              id=productQuantity             1
    Element Text Should Be              id=productPoint                16
    Element Text Should Be              id=totalPrice                  1,629.00
    Element Text Should Be              id=inputEnterPoint             161

    Click Element                       id=createAnOrderButton
    Click Element                       id=address
    Wait Until Element Is Visible       id=confirmAddress
    Input Text                          id=fullName                    โชติกา ภัชรภิรมย์
    Input Text                          id=phoneNumber                 0657234433	
    Click Element                       id=postalCode
	Wait Until Element Is Visible       id=postalCode10330
	Click Element    	                id=postalCode10330
    Click Element                       id=province
	Wait Until Element Is Visible       id=provinceBangkok
	Click Element    	                id=provinceBangkok
    Click Element                       id=district
	Wait Until Element Is Visible       id=districtPathumwan
	Click Element    	                id=districtPathumwan
    Input Text                          id=subDistrict                 ปทุมวัน
    Input Text                          id=houseNo                     เลขที่ 17 ถนนพระรามที่ 1
    Click Element                       id=confirmAddress

    Element Text Should Be              id=confirmFullName             โชติกา ภัชรภิรมย์
    Element Text Should Be              id=confirmPhoneNumber          0657234433
    Element Text Should Be              id=confirmAddress              เลขที่ 17 ถนนพระรามที่ 1 ปทุมวัน ปทุมวัน กรุงเทพมหานคร 10330

    Click Element                       id=selectShippingCharges
    Select Radio Button                 id=shippingCharge              kerry
    Click Element                       id=confirmShippingCharges

    Element Text Should Be              id=selectShippingCharges       เคอรี่ เอ็กซ์เพรส
    Element Text Should Be              id=shippingCost                50.00
    Element Text Should Be              id=totalPrice                  1,679.00

    Click Element                       id=selectPayments
    Select Radio Button                 id=paymentsRadioButton         QR PromptPay
    Click Element                       id=confirmSelectPayments

    Click Element                       id=confirmPayments
    Wait Until Element Is Visible       id=imageQRPromptPay
    Element Text Should Be              id=totalPrice                  1,679.00

    Wait Until Page Contains Element    id=orderComplete
    Element Text Should Be              id=orderNumber                 20240103