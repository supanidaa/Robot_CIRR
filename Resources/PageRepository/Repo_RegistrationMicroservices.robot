*** Variables ***

#MicroService
${TextField_Domain_Name}             //*[@id="txtMSDName"]
${TextField_Domain_Description}      //*[@id="txtMicroservicesDomainDescription"]


#Resource Information
${TextField_ResourceName}            //*[@id="txtResourceName[0]"]
${TextField_Description}             //*[@id="txtRDescription[0]"]
${TextField_SystemName}              //input[@type="text" and @id="txtRSysName[0]"]


#Api
${TextField_Method}                  //*[@id="ddlMethod0"]
${TextField_URIPath}                 //*[@id="txtURIPath0"]
${TextField_ApiDescription}          //*[@id="txtAPIDescription0"]
${TextField_Category}                //*[@id="txtCategory0"]
${TextField_Tag}                     //*[@id="txtTag0"]/div/div/tag-input-form/form/input


#Button Page Detail Resource
${BtnCreateDomain}                   //strong[@id="text_create" and text()=" Create Microservices Domain"]
${BtnCreateResource}                 //strong[@id="text_create" and text()=" Create Resource"]


#Button
${BtnNext_MicroServicePage}          //*[@id="tab-1"]/div[7]/div/div
${BtnNext_ResourcePage}              //*[@id="tab-2"]/div[3]/div/div[2]/span
${BtnNext_ApiPage}                   //*[@id="tab-3"]/div[3]/div/div[3]/span
${BtnNext_Summary}                   //*[@id="st4"]/button


#Button_MicroService_Page
${BtnUploadStructure}                //*[@id="btnfileBrowser[0]"]


#Button_Api_Page
${BtnAddApi}                         //*[@id="tab-3"]/div[3]/div/div[1]/div/span
${BtnUploadT16}                      //*[@id="btnfileBrowser0"]
${BtnApiSubmit}                      //button[@type="submit" and text()="Submit"]
${BtnApiCancel}                      //button[@type="submit" and text()="Cancel"]


#Button_Summary_Page
${BtnCreateMicroservicesDomain}      //*[@id="btnCreateMicroservicesDomain"]


#POPUP_RegistrationMicroservices_Page
${BtnYesIamSure}                     //*[@id="btnConfirmPopup"]
${BtnCancel}                         //*[@id="btnCancelPopup"]
