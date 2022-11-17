*** Variables ***
# //span[@class="col-12 validate" and text()="This field is required."] ช่อง message error

#Display_Alert_Registration_Resource_Page
${Field_Microservices_Domain_Name_RS}            //*[@id="tab-1"]/div[2]/div/div[1]/div[2]/div[1]/span

${Field_Resource_Name_RS}                        //*[@id="cardResource[0]"]/div/div[1]/div[2]/div/span
${Field_Resource_Description_RS}                 //*[@id="cardResource[0]"]/div/div[2]/div[2]/div/span
${Field_System_Name_RS}                             //*[@id="cardResource[0]"]/div/div[3]/div[2]/div/span

${Field_API_Information_RS}                      //*[@id="tab-3"]/div[1]/span

# #Display_Alert_Registration_Resource_Domain_Page
${TimeoutPopup1_RS}            //*[@id="timeoutPopup"]/div[1]/div[1]  #POPUP Are you sure?
${TimeoutPopup2_RS}            //*[@id="timeoutPopup"]/div[1]/div[2]  #POPUP You Want To Create










