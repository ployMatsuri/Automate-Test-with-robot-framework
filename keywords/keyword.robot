*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://futureskill.co
${WAIT_FOR_LOAD}  5s


*** Keywords ***
Open Future Skill Website
    Open Browser  ${URL}  ${BROWSER}

Register User
    Wait Until Keyword Succeeds    5x    4s    Click Element    xpath://button[text()="สมัครสมาชิก"]
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:email    John.Sun@example.com
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:firstName    John
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:lastName    Sun
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:phoneNumber    0806305396
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:newPassword    Js@123456789
    Wait Until Keyword Succeeds    5x    4s    Input Text    name:confirmPassword    Js@123456789
    Wait Until Keyword Succeeds    5x    4s    Click Element    xpath://input[@type="checkbox"]
    Wait Until Keyword Succeeds    5x    4s    Click Element    xpath://button[text()="สมัครสมาชิก"]
    Wait Until Page Contains  ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
