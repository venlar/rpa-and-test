*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Lyko
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Lyko and execute search

    Click element                       //*[@type="search"]
    Key                                 The Ordinary Granactive Retinoid 2% Emulsion
    Key                                 ENTER

    Wait until element is visible       //*[@id="container"]/div/div[1]/div/main/div/div[1]/div[2]/div[1]/div/div/div

    Element should be visible           //*[@id="container"]/div/div[1]/div/main/div/div[1]/div[2]/div[1]/div/div/div/div[1]
    Element should contain              //*[@id="container"]/div/div[1]/div/main/div/div[1]/div[2]/div[1]/div/div/div/div[1]            2% Emulsion
    Element should not contain              //*[@id="container"]/div/div[1]/div/main/div/div[1]/div[2]/div[1]/div/div/div/div[1]            SEURAA
