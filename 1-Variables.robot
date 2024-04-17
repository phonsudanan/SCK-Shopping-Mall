*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                                    https://www.google.co.th/
${browser}                                chrome
${menuHomePage}                           id=homePage    #หน้าแรก
${menuAllProducts}                        id=allProducts    #สินค้าทั้งหมด
${shopNowButton}                          id=shopNowButton    #ปุ่มเข้าสู่เว็บไซต์

${product_1}                              id=productBurberryBritSheer    #ดูสินค้า
${productBurberry}                        id=productBurberry    #ชื่อเต็มของสินค้า     
${productName_1}                          id=productNameBurberryBritSheer    #ชื่อสินค้า     
${productPrice_1}                         id=productPrice    #ราคาสินค้า
${productPoint_1}                         id=productPoint    #แต้มที่จะได้รับ

${add_product_1}                          id=addBurberryBritSheer    #เลือกสินค้าลงตะกร้า
${shoppingCart}                           id=shoppingCart    #ตะกร้าสินค้า
${orderList}                              id=orderList    #รายการที่เพิ่ม
${productQuantity}                        id=productQuantity    #จำนวนสินค้า
${pointBalance}                           id=pointBalance    #แต้งคงเหลือ
${enterPoint}                             id=inputEnterPoint    #ใช้แต้มเป็นส่วนลด
${totalPrice}                             id=totalPrice    #รวมค่าสินค้า

${createAnOrderButton}                    id=createAnOrderButton    #ปุ่ม Next ตะกร้าสินค้า คลิกเพื่อเข้าสู่ขั้นตอนการชำระเงิน
${address}                                id=address    #คลิกเพื่อกรอกที่อยู่
${fullName}                               id=fullName    #ชื่อ
${phoneNumber}                            id=phoneNumber    #เบอร์
${postalCode}                             id=postalCode    #รหัสไปรษณีย์
${postalCode10330}                        id=postalCode10330    #รหัสไปรษณีย์10330
${province}                               id=province    #จังหวัด
${provinceBangkok}                        id=provinceBangkok    #กรุงเทพ
${district}                               id=district    #อำเภอ
${districtPathumwan}                      id=districtPathumwan    #ปทุมวัน
${subDistrict}                            id=subDistrict    #ตำบล
${houseNo}                                id=houseNo    #บ้านเลขที่
${btConfirmAddress}                       id=confirmAddress    #ปุ่มตกลงยืนยันที่อยู่
${confirmFullName}                        id=confirmFullName    #ชื่อ
${confirmPhoneNumber}                     id=confirmPhoneNumber    #เบอร์
${confirmAddress}                         id=confirmAddress    #ยืนยันที่อยู่

${selectShippingCharges}                  id=selectShippingCharges    #เลือกการจัดส่ง
${shippingCharge}                         id=shippingCharge    #เลือกการจัดส่ง กรุ๊ป
${confirmselectShippingCharges}           id=confirmShippingCharges    #ยืนยันเลือกการจัดส่ง
${shippingCost}                           id=shippingCost    #ราคาค่าส่ง
${selectPayments}                         id=selectPayments    #เลือกการช่องทางการชำระเงิน
${payments}                               id=paymentsRadioButton    #เลือกการชำระเงิน PromptPay
${confirmSelectPayments}                  id=confirmSelectPayments    #ยืนยันเลือกการชำระเงิน

${confirmPayments}                        id=confirmPayments    #ยืนยันการชำระเงิน
${imageQRPromptPay}                       id=imageQRPromptPay
${orderComplete}                          id=orderComplete
${orderNumber}                            id=orderNumber



