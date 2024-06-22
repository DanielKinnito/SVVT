*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='live-stream']
    Wait Until Page Contains    Live Stream
    [Teardown]    Close Browser

Play and Pause Live Stream
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='live-stream']
    Click Element    xpath=//button[@id='play']
    Sleep    5 seconds
    Click Element    xpath=//button[@id='pause']
    [Teardown]    Close Browser

On-Demand Audio Playback Accessible
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='on-demand']
    Click Element    xpath=//div[@class='show'][1]
    Wait Until Page Contains    Play
    [Teardown]    Close Browser

Play and Pause On-Demand Audio
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='on-demand']
    Click Element    xpath=//div[@class='show'][1]
    Click Element    xpath=//button[@id='play']
    Sleep    5 seconds
    Click Element    xpath=//button[@id='pause']
    [Teardown]    Close Browser

View Program Schedules
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='schedules']
    Wait Until Page Contains    Program Schedule
    [Teardown]    Close Browser

View Artist Profiles
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='artists']
    Click Element    xpath=//div[@class='artist'][1]
    Wait Until Page Contains    Biography
    [Teardown]    Close Browser

Submit Song Request
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='song-request']
    Input Text    xpath=//input[@name='song']    My Favorite Song
    Input Text    xpath=//input[@name='name']    Test User
    Click Button    xpath=//button[@id='submit']
    Wait Until Page Contains    Thank you for your request
    [Teardown]    Close Browser

Submit Feedback
    Open Browser    ${URL}    chrome
    Click Element    xpath=//a[@id='feedback']
    Input Text    xpath=//textarea[@name='feedback']    Great station!
    Input Text    xpath=//input[@name='name']    Test User
    Click Button    xpath=//button[@id='submit']
    Wait Until Page Contains    Thank you for your feedback
    [Teardown]    Close Browser
