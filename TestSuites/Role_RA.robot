*** Settings ***
Library     Selenium2Library
Resource    ../Resources/PageVariable/Login.robot
# Resource    ../Resources/PageRepository/LoginKeywords_Role_SA.robot

*** Test Cases ***
TST_F14_1_0_0000_Go_To_Login
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. enter เข้าสู่ระบบ

    Open BROWSER                 ${URL}    ${BROSWER}
    Go to                        https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                //*[@id="details-button"]
    Click Element                //*[@id="proceed-link"]
    Input Text                   //*[@id="username"]   ${Username_Role_SA} 
    Input Text                   //*[@id="password"]   ${Password_Role_SA}
    Click Element                ${LoginBtn}
    Capture Page Screenshot      TST_F14_1_0_0000
    [Teardown]                   Close All Browsers


TST_F14_1_0_0008_Click_Resource_Detail
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. enter เข้าสู่ระบบ
        ...     5. Click Resource Detail

    Open BROWSER                 ${URL}    ${BROSWER}
    Go to                        https://stg-cirr.intra.ais
    Maximize Browser Window
    Click Element                //*[@id="details-button"]
    Click Element                //*[@id="proceed-link"]
    Input Text                   //*[@id="username"]   ${Username_Role_SA} 
    Input Text                   //*[@id="password"]   ${Password_Role_SA}
    Click Element                ${LoginBtn}
    Wait Until Element Is Visible    //span[contains(@id,"txtResourceName")]/strong[@class="textName descrip" and text()="STafterfix"]/ancestor::div[3]    timeout=60s
    Click Element                    //span[contains(@id,"txtResourceName")]/strong[@class="textName descrip" and text()="STafterfix"]/ancestor::div[3]
    Capture Page Screenshot          TST_F14_1_0_0008
    # [Teardown]                       Close All Browsers
