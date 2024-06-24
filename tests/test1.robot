*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Live Radio Streaming Accessible from Homepage
    [Documentation]    Verify that live radio streaming is accessible from the homepage
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button[@data-state='playing']  # Wait for the play button to change to pause button
    [Teardown]    Close Browser

Play and Pause Live Stream
    [Documentation]    Verify that the play and pause controls for live streaming work correctly
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[2]/div[1]/button
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button[@data-state='playing']  # Wait for the play button to change to pause button
    Sleep    5 seconds
    Click Element    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button[@data-state='playing']  # Click pause button
    Wait Until Element Is Visible    xpath=//*[@id="comp-l107t2ei"]/div/div[2]/div[1]/button[@data-state='paused']  # Wait for the pause button to change to play button
    [Teardown]    Close Browser
