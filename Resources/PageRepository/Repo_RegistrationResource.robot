*** Variables ***

#MicroService
${TextField_Domain_Name_RS}                //*[@id="ddlMSDName"]


#Resource Information
${TextField_ResourceName_RS}              //*[@id="txtResourceName[0]"]
${TextField_Description_RS}               //*[@id="txtRDescription[0]"]
${TextField_SystemName_RS}                //*[@id="txtRSysName[0]"]


#Api
${TextField_Method_RS}                  //*[@id="ddlMethod0"]
${TextField_URIPath_RS}                 //*[@id="txtURIPath0"]
${TextField_ApiDescription_RS}          //*[@id="txtAPIDescription0"]
${TextField_Category_RS}                //*[@id="txtCategory0"]
${TextField_Tag_RS}                     //*[@id="txtTag0"]/div/div/tag-input-form/form/input


#Button
${BtnNext_MicroServicePage_RS}        //*[@id="tab-1"]/div[7]/div/div/i
${BtnNext_ResourcePage_RS}            //*[@id="tab-2"]/div[3]/div/div[2]/i   
${BtnNext_ApiPage_RS}                 //*[@id="tab-3"]/div[3]/div/div[3]/i  
${BtnNext_Summary_RS}                 //*[@id="st4"]/button/span[1]


#Button_Api_Page
${BtnAddApi_RS}                        //*[@id="tab-3"]/div[3]/div/div[1]/div/span
# ${BtnUploadT16_RS}                     //*[@id="btnfileBrowser0"]
${BtnApiSubmit_RS}                      //button[@type="submit" and text()="Submit"]
# ${BtnApiCancel}                      //button[@type="submit" and text()="Cancel"]


#Button_Summary_Page
${BtnResource}                 //*[@id="btnCreateR"]


#POPUP_RegistrationMicroservices_Page
${BtnYesIamSure_RS}                     //*[@id="btnConfirmPopup"]
${BtnCancel_RS}                         //*[@id="btnCancelPopup"]


