*** Settings ***
Library     Selenium2Library
Resource    ../Resources/PageVariable/CommonVariable.robot

*** Test Cases ***
TST_F13_1_0_000_Go_To_Login
    [Documentation]
        ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
        ...     2. input email
        ...     3. input password
        ...     4. enter เข้าสู่ระบบ

    # Open BROWSER                 ${URL}    ${BROSWER}
    # Go to                        https://stg-cirr.intra.ais
    # Click Element                //*[@id="details-button"]
    # Click Element                //*[@id="proceed-link"]
    # Input Text                   //*[@id="username"]   ${Username_Role_SA} 
    # Input Text                   //*[@id="password"]   ${Password_Role_SA}
    # Click Element                ${LoginBtn}
    # Capture Page Screenshot      TST_F14_1_0_0000
    # [Teardown]                   Close All Browsers

