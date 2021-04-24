*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Stockmann
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Stockmann and execute search

    Click element                       //*[@id="search-input-mini"]
    Input text                          //*[@id="search-input-mini"]                    The Ordinary

    Key                                 ENTER

    wait until element is visible       //*[@id="content"]/div[3]/div

    wait until element does not contain     //*[@id="content"]/div[3]/div               Ladataan tuloksia

    sleep                               2

    wait until element contains         //*[@id="content"]/div[3]               The Ordinary

    sleep                               2

    Element should contain              //*[@id="content"]/div[3]                   Retinoid

