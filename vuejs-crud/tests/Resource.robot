*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${BROWSER}        Chrome


*** Keywords ***
Open Website
    Open Browser                http://localhost:8080               ${BROWSER}
    Title Should Be             VueJS Products Crud
    Maximize Browser Window 

Key
    [Arguments]                     ${key}
    Press keys                  NONE                    ${key}
