*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.shegerfm.com

*** Test Cases ***
Play and Pause On-Demand Audio
    [Documentation]    Verify that the play and pause controls work for on-demand audio
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Click Element    xpath=//a[contains(@class, 'comp-kr2peefk') and contains(text(), 'On-Demand')]
    Click Element    xpath=//div[contains(@class, 'show')][1]
    Wait Until Page Contains    Play
    Click Element    xpath=//button[@aria-label='Play']
    Sleep    5 seconds
    Click Element    xpath=//button[@aria-label='Pause']
    [Teardown]    Close Browser
