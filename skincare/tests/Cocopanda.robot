*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Cocopanda
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Cocopanda and execute search
    Click element                           //*[@id="txt-search"]
    input text                              //*[@id="txt-search"]               The Ordinary Granactive Retinoid 2% Emulsion
    key                                     ENTER
    Wait Until Element Is Visible           //*[@id="product-list-container"]/div
    Element should not contain              //*[@id="product-list-container"]/div/div/div[2]/div/div[2]                 TULOSSA
    Click element                           //*[@id="product-list-container"]/div/div/div[2]/div/div[2]
    sleep                                   0.1
    Go To                                   https://cocopanda.fi/cart/