*** Variables ***

#Display_Alert_Registration_Microservices_Domain_Page
${Field_Microservices_Domain_Name}            //div[@id="tab-1"]/div[2]/div/div[1]/div[2]/div[2]/span
# ${Field_Structure}                            //span[@class="col-12 validate " and text()="This field is required."]
${Field_Structure}                            //input[@id="txtStructure[0]"]/parent::div/parent::div/following-sibling::span
${Field_Microservices_Domain_Description}     //span[@class="col-md-6 col-sm-12 validate" and text()="This field is required."]

${Field_Resource_Name}                        //*[@id="cardResource[0]"]/div/div[1]/div[2]/div/span
${Field_Resource_Description}                 //*[@id="cardResource[0]"]/div/div[2]/div[2]/div/span
${Field_System_Name}                          //*[@id="cardResource[0]"]/div/div[3]/div[2]/div/span

${Field_API_Information}                      //*[@id="tab-3"]/div[1]/span

#Display_Alert_Registration_Microservices_Domain_Page
${TimeoutPopup1}            //*[@id="timeoutPopup"]/div[1]/div[1]  #POPUP Are you sure?
${TimeoutPopup2}            //*[@id="timeoutPopup"]/div[1]/div[2]  #POPUP You Want To Create




