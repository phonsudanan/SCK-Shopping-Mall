*** Settings ***
Resource    ${CURDIR}/1-Variables.robot

*** Keywords ***
เข้าสู่เว็บไซต์
	Open browser                        ${url}                            ${browser}    
	Maximize Browser Window

เลือกสินค้า
	Click Element	                    ${shopNowButton} 
	Wait Until Page Contains Element	${product_1}
	Click Element	                    ${product_1}

ตรวจสอบรายละเอียดสินค้า
    [Arguments]    ${inputProductName}  ${inputProductPrice}       ${inputProductPoint}
	Wait Until Page Contains Element    ${productBurberry}
    Element Text Should Be              ${productBurberry}         ${inputProductName}
    Element Text Should Be              ${productPrice_1}          ${inputProductPrice}
    Element Text Should Be              ${productPoint_1}          ${inputProductPoint}

เพิ่มสินค้าลงตะกร้า
    Click Element                       ${add_product_1}

ไปที่ตะกร้าสินค้า
    Click Element                       ${shoppingCart}
    Wait Until Page Contains Element    ${orderList}

ตรวจสอบตะกร้าสินค้า
    [Arguments]    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputTotalPrice}
    Element Text Should Be              ${productName_1}           ${inputProductName}
    Element Text Should Be              ${productPrice_1}          ${inputProductPrice}
    Element Text Should Be              ${productQuantity}         ${inputProductQuantity}
    Element Text Should Be              ${productPoint_1}          ${inputProductPoint}
    Element Text Should Be              ${totalPrice}              ${inputTotalPrice}

ตรวจสอบแต้มคงเหลือ
    [Arguments]    ${inputPointBalance}
    Element Text Should Be              ${pointBalance}            ${inputPointBalance}

ใช้แต้มเป็นส่วนลด
    [Arguments]    ${inputEnterPoint}
    Input Text                          ${enterPoint}               ${inputEnterPoint}
    Press Keys                          ${enterPoint}               ENTER

ตรวจสอบตะกร้าสินค้าหลังใส่ส่วนลด
    [Arguments]    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputTotalPrice}    ${inputEnterPoint}
    ตรวจสอบตะกร้าสินค้า    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputTotalPrice}
    Element Text Should Be              ${enterPoint}              ${inputEnterPoint}

เลือกรหัสไปรษณีย์
    [Arguments]    ${postalCode}
	IF  "${postalCode}" == "10330"
	Click Element                    ${postalCode}
	Wait Until Element Is Visible    ${postalCode10330}
	Click Element    	             ${postalCode10330}
	END

เลือกจังหวัด
    [Arguments]    ${province}
	IF  "${province}" == "กรุงเทพมหานคร"
	Click Element                    ${province}
	Wait Until Element Is Visible    ${provinceBangkok}
	Click Element    	             ${provinceBangkok}
	END

เลือกอำเภอ
    [Arguments]    ${district}
	IF  "${district}" == "ปทุมวัน"
	Click Element                    ${district}
	Wait Until Element Is Visible    ${districtPathumwan}
	Click Element    	             ${districtPathumwan}
	END

กรอกที่อยู่สำหรับการจัดส่ง
    Click Element                   ${createAnOrderButton}
    [Arguments]    ${inputFullName}    ${inputPhoneNumber}    ${postalCode}    ${province}    ${district}    ${inputSubDistrict}        ${inputHouseNo}
    Input Text                       ${fullName}                   ${inputFullName}
    Input Text                       ${phoneNumber}                ${inputPhoneNumber}
	เลือกรหัสไปรษณีย์	                ${postalCode}
	เลือกจังหวัด	                    ${province}
	เลือกอำเภอ		                  ${district}
    Input Text                       ${subDistrict}                ${inputSubDistrict}
    Input Text                       ${houseNo}                    ${inputHouseNo}
    Click Element                    ${confirmAddress}

ตรวจสอบที่อยู่สำหรับการจัดส่ง
    [Arguments]    ${inputFullName}    ${inputPhoneNumber}    ${inputAddress}
    Element Text Should Be           ${confirmFullName}             ${inputFullName}
    Element Text Should Be           ${confirmPhoneNumber}          ${inputPhoneNumber}
    Element Text Should Be           ${confirmAddress}              ${inputAddress}

