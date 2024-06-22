*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    [Documentation]    Verify that live radio streaming is accessible from the homepage
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[text()='Live Radio']
    Click Element    xpath=//a[text()='Live Radio']
    Wait Until Page Contains    Listen Live
    [Teardown]    Close Browser

Play and Pause Live Stream
    [Documentation]    Verify that the play and pause controls for live streaming work correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='Live Radio']
    Wait Until Page Contains    Listen Live
    Click Element    xpath=//button[@id='play-button']
    Sleep    5 seconds
    Click Element    xpath=//button[@id='pause-button']
    [Teardown]    Close Browser

On-Demand Audio Playback Accessible
    [Documentation]    Verify that users can access on-demand audio playback from the on-demand section
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='On-Demand']
    Wait Until Page Contains    On-Demand Shows
    Click Element    xpath=//div[@class='show'][1]
    Wait Until Page Contains    Play
    [Teardown]    Close Browser

Play and Pause On-Demand Audio
    [Documentation]    Verify that the play and pause controls work for on-demand audio
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='On-Demand']
    Click Element    xpath=//div[@class='show'][1]
    Wait Until Page Contains    Play
    Click Element    xpath=//button[@id='play-button']
    Sleep    5 seconds
    Click Element    xpath=//button[@id='pause-button']
    [Teardown]    Close Browser

View Program Schedules
    [Documentation]    Verify that the daily and weekly program schedules are displayed correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='Schedules']
    Wait Until Page Contains    Program Schedule
    [Teardown]    Close Browser

View Artist Profiles
    [Documentation]    Verify that artist profiles are accessible and display the correct information
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='Artists']
    Click Element    xpath=//div[@class='artist-profile'][1]
    Wait Until Page Contains    Biography
    [Teardown]    Close Browser

Submit Song Request
    [Documentation]    Verify that the song request form is functional
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='Song Request']
    Input Text    xpath=//input[@name='song']    My Favorite Song
    Input Text    xpath=//input[@name='name']    Test User
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Thank you for your request
    [Teardown]    Close Browser

Submit Feedback
    [Documentation]    Verify that the feedback form is functional and submissions are processed correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[text()='Feedback']
    Input Text    xpath=//textarea[@name='feedback']    Great station!
    Input Text    xpath=//input[@name='name']    Test User
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Thank you for your feedback
    [Teardown]    Close Browser
