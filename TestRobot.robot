# *** Setting ***
# Library  Selenium2Library

# *** Variables ***
# ${HOMEPAGE}      https://www.google.com/
# ${BROWSER}       chrome
# ${USERNAME}      porns505
# ${PASSWORD}      P@or2022$#AiS

# *** Test Cases ***
# GO_TO_WEB_THAITICKETMAJOR
#         [Documentation]
#         ...    "1. เข้าเว็บไซต์ https://stg-cirr.intra.ais
#         ...     2. input email
#         ...     3. input password
#         ...     4. enter เข้าสู่ระบบ
#         ...     5. close browser

#     Open BROWSER      ${HOMEPAGE}    ${BROWSER}
#     Go to             https://stg-cirr.intra.ais
#     Click Element     //*[@id="details-button"]
#     Click Element     //*[@id="proceed-link"]
#     Input Text        //*[@id="username"]   ${USERNAME}
#     Input Text        //*[@id="password"]   ${PASSWORD}
#     Click Element     //*[@id="loginForm"]/span[2]/div/button
#     Click Element     //*[@id="linkToDetail"] 

