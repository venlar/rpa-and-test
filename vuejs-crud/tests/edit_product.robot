*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Website
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Close Browser

*** Test Cases ***
Click 'Edit' and update values
    Click Element                   //*[@id="all-products"]/table/tbody/tr[1]/td[4]/a[1]
    Location Should Be              http://localhost:8080/products/edit/2
    Input Text                      //*[@id="product_name"]     Edited Product
    Sleep                           2
    Input Text                      //*[@id="product_price"]    13
    Click Element                   //*[@id="update-product"]/form/div[4]/button
    Page Should Contain             Product updated successfully
