*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${BROWSER}        Firefox


*** Keywords ***

Open Cocopanda
    Open Browser                https://www.cocopanda.fi/                ${BROWSER}
    Title Should Be             Cocopanda.fi | Kauneuden verkkokauppa | Cocopanda
    Maximize Browser Window     

Open Eleven
    Open Browser                https://eleven.fi/                ${BROWSER}
    Maximize Browser Window     

Open Lyko
    Open Browser                https://www.lyko.fi/                ${BROWSER}
    Title Should Be             Hius- ja ihonhoitotuotteet verkosta hyvään hintaan | Lyko.fi
    Maximize Browser Window     

Open Nordicfeel
    Open Browser                https://www.nordicfeel.fi/                ${BROWSER}
    Title Should Be             Hajuvesiä ja kauneudenhoitotuotteita miehelle ja naiselle | Nordicfeel
    Maximize Browser Window     

Open Stockmann
    Open Browser                https://www.stockmann.com/           ${BROWSER}
    Title Should Be             Stockmann - verkkokaupassa ja tavarataloissa | Stockmann
    Maximize Browser Window     

Open Bangerhead
    Open Browser                https://www.bangerhead.fi/           ${BROWSER}
    Title Should Be             Kaikki kauneuteesi kätevästi verkosta - Bangerhead.fi
    Maximize Browser Window     


Open Kicks
    Open Browser                https://www.kicks.fi/           ${BROWSER}
    Title Should Be             Meikit, tuoksut ja ihonhoitotuotteet netistä  - KICKS
    Maximize Browser Window     

Key
    [Arguments]                     ${key}
    Press keys                  NONE                    ${key}

