*** Settings ***
Library     SeleniumLibrary
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
    [Arguments]    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputPointBalance}    ${inputTotalPrice}
    Element Text Should Be              ${productName_1}           ${inputProductName}
    Element Text Should Be              ${productPrice_1}          ${inputProductPrice}
    Element Text Should Be              ${productQuantity}         ${inputProductQuantity}
    Element Text Should Be              ${productPoint_1}          ${inputProductPoint}
    Element Text Should Be              ${pointBalance}            ${inputPointBalance}
    Element Text Should Be              ${totalPrice}              ${inputTotalPrice}

ใช้แต้มเป็นส่วนลด
    [Arguments]    ${inputEnterPoint}
    Input Text                          ${enterPoint}               ${inputEnterPoint}

ตรวจสอบตะกร้าสินค้าหลังใส่ส่วนลด
    [Arguments]    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputPointBalance}    ${inputTotalPrice}    ${inputEnterPoint}

    ตรวจสอบตะกร้าสินค้า    ${inputProductName}  ${inputProductPrice}    ${inputProductQuantity}    ${inputProductPoint}    ${inputPointBalance}    ${inputTotalPrice}

    Element Text Should Be              ${enterPoint}              ${inputEnterPoint}
