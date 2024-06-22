*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    [Documentation]    Verify that live radio streaming is accessible from the homepage
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//div[@class='jp-play']   # Corrected XPath for play button
    Click Element    xpath=//div[@class='jp-play']
    Wait Until Page Contains    Live Stream
    [Teardown]    Close Browser

Play and Pause Live Stream
    [Documentation]    Verify that the play and pause controls for live streaming work correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//div[@class='jp-play']   # Corrected XPath for play button
    Click Element    xpath=//div[@class='jp-play']
    Wait Until Page Contains    Live Stream
    Sleep    5 seconds
    Click Element    xpath=//div[@class='jp-pause']   # Corrected XPath for pause button
    [Teardown]    Close Browser
