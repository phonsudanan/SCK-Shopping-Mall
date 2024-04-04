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
    Element Text Should Be              ${productName_1}           ${inputProductName}
    Element Text Should Be              ${productPrice_1}          ${inputProductPrice}
    Element Text Should Be              ${productPoint_1}          ${inputProductPoint}
