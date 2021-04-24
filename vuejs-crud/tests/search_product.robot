*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Website
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Close Browser

*** Test Cases ***
Use search bar to find a specific product
    Input Text                      //*[@id="all-products"]/div/input      Amazon
    Sleep                           3
    Page Should Contain             Amazon
    Page Should Not Contain         Kindle