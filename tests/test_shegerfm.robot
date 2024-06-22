*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://shegerfm.com

*** Test Cases ***
Test Live Radio Streaming
    Open Browser    ${URL}    chrome
    Click Element   //button[@id='play-live-stream']
    Sleep           5s
    Capture Page Screenshot
    [Teardown]      Close Browser

Test On-Demand Audio Playback
    Open Browser    ${URL}    chrome
    Click Element   //a[@id='on-demand']
    Click Element   //div[@class='show'][1]//button[@id='play']
    Sleep           5s
    Capture Page Screenshot
    [Teardown]      Close Browser

Test Program Schedules
    Open Browser    ${URL}    chrome
    Click Element   //a[@id='program-schedules']
    Wait Until Element Is Visible    //table[@id='schedule-table']
    Capture Page Screenshot
    [Teardown]      Close Browser

Test Artist Profiles
    Open Browser    ${URL}    chrome
    Click Element   //a[@id='artist-profiles']
    Wait Until Element Is Visible    //div[@class='artist'][1]
    Capture Page Screenshot
    [Teardown]      Close Browser

Test Song Request Form
    Open Browser    ${URL}    chrome
    Click Element   //a[@id='song-request']
    Input Text      //input[@id='song-request-text']    My favorite song
    Click Element   //button[@id='submit-request']
    Wait Until Element Is Visible    //div[@id='confirmation']
    Capture Page Screenshot
    [Teardown]      Close Browser
