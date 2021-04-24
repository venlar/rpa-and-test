*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Bangerhead
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Bangerhead and execute search
    Click element                   //*[@id="sokterm"]
    Input text                      //*[@id="sokterm"]              The Ordinary Granactive Retinoid 2% Emulsion
    Key                             ENTER 

    wait until element contains             //*[@id="main_loop"]/div[3]             The Ordinary

    Element should contain          //*[@id="directresults"]/div[2]/div/div/div[3]/a            Retinoid

    Click element                   //*[@id="directresults"]/div[2]/div/div/div[3]/a

    wait until element is visible           //*[@id="OrderFalt"]/form/div

    Element should not contain              //*[@id="OrderFalt"]/form/div                   Tarkkaile tuotetta

    