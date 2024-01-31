*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/keyword.robot
Suite Setup    Open Browser    ${URL}    chrome
Suite Teardown    Close Browser

*** Test Cases ***
User Registration on Future Skill
    Open Future Skill Website
    Maximize Browser Window
    Set Selenium Speed  0.5x
    # Call the Page Object for the login page
    Register User  # Call the Page Object for user registration
    Close Browser