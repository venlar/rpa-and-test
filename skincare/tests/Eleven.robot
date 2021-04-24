*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Eleven
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Eleven and execute search

    click element                       //*[@id="searchfield"]
    input text                          //*[@id="searchfield"]                      The Ordinary Granactive Retinoid 2% Emulsion
    key                                 ENTER

    wait until element is visible       //*[@id="faceted-list"]/div/ul

    Element should not contain          //*[@id="faceted-list"]/div/ul/li/div/div[2]/div/a          ODOTUSLISTALLE