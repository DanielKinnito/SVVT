*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    [Documentation]    Verify that live radio streaming is accessible from the homepage
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button/svg
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button/svg
    Wait Until Page Contains    Live Stream
    [Teardown]    Close Browser

Play and Pause Live Stream
    [Documentation]    Verify that the play and pause controls for live streaming work correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button/svg
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button/svg
    Wait Until Page Contains    Live Stream
    Sleep    5 seconds
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button/svg
    [Teardown]    Close Browser