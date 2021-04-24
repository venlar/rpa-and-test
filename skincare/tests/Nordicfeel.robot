*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Nordicfeel
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Run Keyword If Test Failed              Close Browser

*** Test Cases ***
Open Nordicfeel and execute search

    Go to                   https://www.nordicfeel.fi/ihonhoito/kasvot/seerumit-oljyt/the-ordinary-granactive-retinoid-2-emulsion-54858
    wait until element is visible                   //html/body/div[7]/div[1]/div[2]/div/div/div/div/div
    Element should not contain                  //html/body/div[7]/div[1]/div[2]/div/div/div/div/div             Väliaikaisesti loppunut

    