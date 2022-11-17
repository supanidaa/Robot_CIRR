*** Settings ***
Library     Selenium2Library
Resource    ../Resources/PageVariable/Login.robot
Resource    ../Resources/PageVariable/TextErrorMessages.robot
Resource    ../Resources/PageVariable/RegistrationMicroservices.robot
Resource    ../Resources/PageVariable/RegistrationResource.robot
Resource    ../Resources/PageRepository/AlertMessages_Microservices.robot
Resource    ../Resources/PageRepository/AlertMessages_Resource.robot
Resource    ../Resources/PageRepository/Repo_RegistrationMicroservices.robot
Resource    ../Resources/PageRepository/Repo_RegistrationResource.robot
Resource    ../Resources/PageRepository/Repo_ResourceDetail.robot


*** Test Cases ***
TST_F14_1_0_0030_Click_Resource_Detail
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Resource Detail
    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}    
    Wait Until Element Is Visible    ${Btn_ResourceDetail_1}    timeout=60s
    Click Element                    ${Btn_ResourceDetail_1}
    # Click Element                    ${Btn_ChangeRequest} 



TST_F14_1_0_0041_Create_Microservices_Domain_Role_RO
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Microservices Domain

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateDomain}   timeout=60s
    Click Element                    ${BtnCreateDomain}
    [Teardown]                       Close All Browsers


TST_F14_1_0_0042_Create_Microservices_Domain_Input_is_null
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Microservices Domain
        ...     6. Go to Page Summary
        ...     7. Click Create Microservices Domain (Input data is null)

        ...     *Expect Result*
        ...     The application should display alert error message "This field is required." correctly.

    Open BROWSER                       ${URL}    ${BROSWER}
    Go to                              https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                      //*[@id="details-button"]
    Click Element                      //*[@id="proceed-link"]
    Input Text                         //*[@id="username"]   ${Username_Role_RO} 
    Input Text                         //*[@id="password"]   ${Password_Role_RO}
    Click Element                      ${LoginBtn}
    Wait Until Element Is Visible      ${BtnCreateDomain}   timeout=60s
    Click Element                      ${BtnCreateDomain}
    Click Element                      ${BtnNext_Summary}
    Click Element                      ${BtnCreateMicroservicesDomain}
    ${text1_Domain_Name}             Get Text       ${Field_Microservices_Domain_Name}   
    ${text2_Structure}               Get Text       ${Field_Structure}                    
    ${text3_Domain_Description}      Get Text       ${Field_Microservices_Domain_Description}   
    ${text4_Resource_Name}           Get Text       ${Field_Resource_Name}               
    ${text5_Resource_Description}    Get Text       ${Field_Resource_Description}        
    ${text6_System_Name}             Get Text       ${Field_System_Name}
    Should Be Equal    ${text1_Domain_Name}             ${Data_is_null}
    Should Be Equal    ${text2_Structure}               ${Data_is_null}
    Should Be Equal    ${text3_Domain_Description}      ${Data_is_null}
    Should Be Equal    ${text4_Resource_Name}           ${Data_is_null}
    Should Be Equal    ${text5_Resource_Description}    ${Data_is_null}
    Should Be Equal    ${text6_System_Name}             ${Data_is_null}
    [Teardown]                       Close All Browsers


TST_F14_1_0_0043_Create_Microservices_Domain_Input_is_not_null
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Microservices Domain
        ...     6. Go to Page Summary
        ...     7. Click Create Microservices Domain (Input data is not null)

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateDomain}   timeout=60s
    Click Element                    ${BtnCreateDomain}
    #MicroService
    Input Text                       ${TextField_Domain_Name}          ${InputText_Domain_Name}
    Choose file                      ${BtnUploadStructure}             ${Input_FileStructure}
    Input Text                       ${TextField_Domain_Description}   ${InputText_Domain_Description} 
    #Resource Information
    Wait Until Element Is Visible    ${BtnNext_MicroServicePage}   timeout=60s
    Click Element                    ${BtnNext_MicroServicePage}
    Input Text                       ${TextField_ResourceName}          ${InputText_ResourceName}
    Input Text                       ${TextField_Description}           ${InputText_Description}
    Click Element                    ${TextField_SystemName} 
    Input Text                       ${TextField_SystemName}            ${InputText_SystemName}
    #Api
    Wait Until Element Is Visible    ${BtnNext_ResourcePage}    timeout=60s
    Click Element                    ${BtnNext_ResourcePage}
    Click Element                    ${BtnAddApi} 
    Select From List By Value        ${TextField_Method}                ${InputText_Method}
    Input Text                       ${TextField_URIPath}               ${InputText_URIPath}
    Click Element                    ${TextField_ApiDescription}
    Input Text                       ${TextField_ApiDescription}        ${InputText_ApiDescription}
    Click Element                    ${TextField_Category}              
    Input Text                       ${TextField_Category}              ${InputText_Category}
    Click Element                    ${TextField_Tag}
    Input Text                       ${TextField_Tag}                   ${InputText_Tag}
    Press Keys                       ${TextField_Tag}    RETURN
    Click Element                    ${BtnApiSubmit} 
    Click Element                    ${BtnNext_ApiPage} 
    Click Element                    ${BtnCreateMicroservicesDomain}
    ${text1_AreYouSure}             Get Text       ${TimeoutPopup1}   
    ${text2_YouWantToCreate}        Get Text       ${TimeoutPopup2} 
    Should Be Equal    ${text1_AreYouSure}             ${Comfirm_Microservices_Page1}
    Should Be Equal    ${text2_YouWantToCreate}        ${Comfirm_Microservices_Page2}
    [Teardown]                       Close All Browsers


TST_F14_1_0_0044_Create_Microservices_Domain
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Microservices Domain
        ...     6. Go to Page Summary
        ...     7. Click Create Microservices Domain (Input data is not null)
        ...     8. Click Yes I am Sure

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateDomain}   timeout=60s
    Click Element                    ${BtnCreateDomain}
    #MicroService
    Input Text                       ${TextField_Domain_Name}          ${InputText_Domain_Name}
    Choose file                      ${BtnUploadStructure}             ${Input_FileStructure}
    Input Text                       ${TextField_Domain_Description}   ${InputText_Domain_Description} 
    #Resource Information
    Wait Until Element Is Visible    ${BtnNext_MicroServicePage}   timeout=60s
    Click Element                    ${BtnNext_MicroServicePage}
    Input Text                       ${TextField_ResourceName}          ${InputText_ResourceName}
    Input Text                       ${TextField_Description}           ${InputText_Description}
    Click Element                    ${TextField_SystemName}
    Input Text                       ${TextField_SystemName}            ${InputText_SystemName}
    #Api
    Wait Until Element Is Visible    ${BtnNext_ResourcePage}    timeout=60s
    Click Element                    ${BtnNext_ResourcePage}
    Click Element                    ${BtnAddApi} 
    Select From List By Value        ${TextField_Method}                ${InputText_Method}
    Input Text                       ${TextField_URIPath}               ${InputText_URIPath}
    Click Element                    ${TextField_ApiDescription}
    Input Text                       ${TextField_ApiDescription}        ${InputText_ApiDescription}
    Click Element                    ${TextField_Category}              
    Input Text                       ${TextField_Category}              ${InputText_Category}
    Click Element                    ${TextField_Tag}
    Input Text                       ${TextField_Tag}                   ${InputText_Tag}
    Press Keys                       ${TextField_Tag}    RETURN
    Click Element                    ${BtnApiSubmit} 
    Click Element                    ${BtnNext_ApiPage} 
    Click Element                    ${BtnCreateMicroservicesDomain}
    Click Element                    ${BtnYesIamSure}
    # [Teardown]                       Close All Browsers


TST_F14_1_0_0045_Create_Resource_Role_RO
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Resource

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateResource}    timeout=60s
    Click Element                    ${BtnCreateResource} 
    [Teardown]                       Close All Browsers


TST_F14_1_0_0046_Create_Resource_Input_is_null
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Resource
        ...     6. Go to Page Summary
        ...     7. Click Create Resource (Input data is null)

        ...     *Expect Result*
        ...     The application should display alert error message "This field is required." correctly.


    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateResource}    timeout=60s
    Click Element                    ${BtnCreateResource} 
    Click Element                    ${BtnNext_Summary_RS}
    Click Element                    ${BtnResource} 
    ${text1_Domain_Name_RS}             Get Text       ${Field_Microservices_Domain_Name_RS}                 
    ${text2_Resource_Name_RS}           Get Text       ${Field_Resource_Name_RS}               
    ${text3_Resource_Description_RS}    Get Text       ${Field_Resource_Description_RS}        
    ${text4_System_Name_RS}             Get Text       ${Field_System_Name_RS}
    ${text5_ApiInformation_RS}          Get Text       ${Field_API_Information_RS}
    Should Be Equal    ${text1_Domain_Name_RS}               ${Data_is_null}
    Should Be Equal    ${text2_Resource_Name_RS}             ${Data_is_null}
    Should Be Equal    ${text3_Resource_Description_RS}      ${Data_is_null}
    Should Be Equal    ${text4_System_Name_RS}               ${Data_is_null}
    Should Be Equal    ${text5_ApiInformation_RS}            ${Data_is_null}
    [Teardown]                       Close All Browsers


TST_F14_1_0_0047_Create_Resource_Input_is_not_null
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Resource
        ...     6. Go to Page Summary
        ...     7. Click Create Resource (Input data is not null)

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateResource}    timeout=60s
    Click Element                    ${BtnCreateResource} 
    #MicroService
    Input Text                       ${TextField_Domain_Name_RS}          ${InputText_Domain_Name_RS}
    Press Keys                       ${TextField_Domain_Name_RS}    RETURN
    #Resource Information
    Wait Until Element Is Visible    ${BtnNext_MicroServicePage_RS}   timeout=60s
    Click Element                    ${BtnNext_MicroServicePage_RS}
    Input Text                       ${TextField_ResourceName_RS}          ${InputText_ResourceName_RS}
    Input Text                       ${TextField_Description_RS}           ${InputText_Description_RS}
    Click Element                    ${TextField_SystemName_RS}
    Input Text                       ${TextField_SystemName_RS}            ${InputText_SystemName_RS}
    #Api
    Wait Until Element Is Visible    ${BtnNext_ResourcePage_RS}    timeout=60s
    Click Element                    ${BtnNext_ResourcePage_RS}
    Click Element                    ${BtnAddApi_RS} 
    Select From List By Value        ${TextField_Method_RS}                ${InputText_Method_RS} 
    Input Text                       ${TextField_URIPath_RS}               ${InputText_URIPath_RS} 
    Click Element                    ${TextField_ApiDescription_RS}
    Input Text                       ${TextField_ApiDescription_RS}        ${InputText_ApiDescription_RS}
    Click Element                    ${TextField_Category_RS}              
    Input Text                       ${TextField_Category_RS}              ${InputText_Category_RS}
    Click Element                    ${TextField_Tag_RS}
    Input Text                       ${TextField_Tag_RS}                   ${InputText_Tag_RS}
    Press Keys                       ${TextField_Tag_RS}    RETURN
    Click Element                    ${BtnApiSubmit_RS} 
    Click Element                    ${BtnNext_ApiPage_RS} 
    Click Element                    ${BtnResource}
    ${text1_AreYouSure}             Get Text       ${TimeoutPopup1}   
    ${text2_YouWantToCreate}        Get Text       ${TimeoutPopup2} 
    Should Be Equal    ${text1_AreYouSure}             ${Comfirm_Resource_Page1}
    Should Be Equal    ${text2_YouWantToCreate}        ${Comfirm_Resource_Page2}
    [Teardown]                       Close All Browsers


TST_F14_1_0_0048_Create_Resource
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. Click Button Login
        ...     5. Click Create Resource
        ...     6. Go to Page Summary
        ...     7. Click Create Resource (Input data is not null)
        ...     8. Click Yes I am Sure

    Open BROWSER                     ${URL}    ${BROSWER}
    Go to                            https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                    //*[@id="details-button"]
    Click Element                    //*[@id="proceed-link"]
    Input Text                       //*[@id="username"]   ${Username_Role_RO} 
    Input Text                       //*[@id="password"]   ${Password_Role_RO}
    Click Element                    ${LoginBtn}
    Wait Until Element Is Visible    ${BtnCreateResource}    timeout=60s
    Click Element                    ${BtnCreateResource} 
    #MicroService
    Input Text                       ${TextField_Domain_Name_RS}          ${InputText_Domain_Name_RS}
    Press Keys                       ${TextField_Domain_Name_RS}    RETURN
    #Resource Information
    Wait Until Element Is Visible    ${BtnNext_MicroServicePage_RS}   timeout=60s
    Click Element                    ${BtnNext_MicroServicePage_RS}
    Input Text                       ${TextField_ResourceName_RS}          ${InputText_ResourceName_RS}
    Input Text                       ${TextField_Description_RS}           ${InputText_Description_RS}
    Click Element                    ${TextField_SystemName_RS}
    Input Text                       ${TextField_SystemName_RS}            ${InputText_SystemName_RS}
    #Api
    Wait Until Element Is Visible    ${BtnNext_ResourcePage_RS}    timeout=60s
    Click Element                    ${BtnNext_ResourcePage_RS}
    Click Element                    ${BtnAddApi_RS} 
    Select From List By Value        ${TextField_Method_RS}                ${InputText_Method_RS} 
    Input Text                       ${TextField_URIPath_RS}               ${InputText_URIPath_RS} 
    Click Element                    ${TextField_ApiDescription_RS}
    Input Text                       ${TextField_ApiDescription_RS}        ${InputText_ApiDescription_RS}
    Click Element                    ${TextField_Category_RS}              
    Input Text                       ${TextField_Category_RS}              ${InputText_Category_RS}
    Click Element                    ${TextField_Tag_RS}
    Input Text                       ${TextField_Tag_RS}                   ${InputText_Tag_RS}
    Press Keys                       ${TextField_Tag_RS}    RETURN
    Click Element                    ${BtnApiSubmit_RS} 
    Click Element                    ${BtnNext_ApiPage_RS} 
    Click Element                    ${BtnResource}
    ${text1_AreYouSure}             Get Text       ${TimeoutPopup1}   
    ${text2_YouWantToCreate}        Get Text       ${TimeoutPopup2} 
    Should Be Equal    ${text1_AreYouSure}             ${Comfirm_Resource_Page1}
    Should Be Equal    ${text2_YouWantToCreate}        ${Comfirm_Resource_Page2}
    Click Element                    ${BtnYesIamSure_RS}
    # [Teardown]                       Close All Browsers














