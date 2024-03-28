*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                                    https://www.google.co.th/
${browser}                                chrome
${menuHomePage}                           id=homePage    #หน้าแรก
${menuAllProducts}                        id=allProducts    #สินค้าทั้งหมด
${shopNowButton}                          id=shopNowButton    #ปุ่มเข้าสู่เว็บไซต์
${product_1}                              id=productBurberryBritSheer    #ดูสินค้า
${add_product_1}                          id=addBurberryBritSheer    #เลือกสินค้าลงตะกร้า
${shoppingCart}                           id=shoppingCart    #ตะกร้าสินค้า
${pointBalance}                           id=pointBalance    #แต้งคงเหลือ
${enterPoint}                             id=inputEnterPoint    #ใช้แต้มเป็นส่วนลด
${createAnOrderButton}                    id=createAnOrderButton    #ปุ่ม Next ตะกร้าสินค้า คลิกเพื่อเข้าสู่การชำระเงิน
${fullName}                               id=fullName    #ชื่อ
${phoneNumber}                            id=phoneNumber    #เบอร์
${postalCode}                             id=postalCode    #รหัสไปรษณีย์
${province}                               id=province    #จังหวัด
${district}                               id=district    #อำเภอ
${subDistrict}                            id=subDistrict    #ตำบล
${houseNo}                                id=houseNo    #บ้านเลขที่
${selectShippingCharges}                  id=selectShippingCharges    #เลือกการจัดส่ง
${kerry}                                  id=kerryRadioButton    #เลือกการจัดส่ง เคอรี่
${confirmselectShippingCharges}           id=confirmShippingCharges    #ยืนยันเลือกการจัดส่ง
${selectPayments}                         id=selectPayments    #เลือกการช่องทางการชำระเงิน
${selectPromptPayQRPromptPay}             id=QRPromptPayRadioButton    #เลือกการชำระเงิน PromptPay
${confirmselectPayments}                  id=confirmselectPayments    #ยืนยันเลือกการชำระเงิน
${confirmPayments}                        id=confirmPayments    #ยืนยันการชำระเงิน
