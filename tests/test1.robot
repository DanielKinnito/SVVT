*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    [Documentation]    Verify that live radio streaming is accessible from the homepage
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[text()='MusicPlayer2802357603__lowerLayout focus-within']
    Click Element    xpath=//a[text()='PlayPause170508545__button MusicPlayer2802357603__playButton focus-within']
    Wait Until Page Contains    Listen Live
    [Teardown]    Close Browser

Play and Pause Live Stream
    [Documentation]    Verify that the play and pause controls for live streaming work correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='PlayPause170508545__button MusicPlayer2802357603__playButton focus-within']
    Wait Until Page Contains    Listen Live
    Click Element    xpath=//button[@id='PlayPause170508545__button MusicPlayer2802357603__playButton focus-within']
    Sleep    5 seconds
    Click Element    xpath=//button[@id='PlayPause170508545__button MusicPlayer2802357603__playButton focus-within']
    [Teardown]    Close Browser