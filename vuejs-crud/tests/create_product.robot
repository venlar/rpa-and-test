*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Website
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Close Browser

*** Test Cases ***
Click 'Create Product' and create a new product
    Click Element                   //*[@id="all-products"]/p/a
    Location Should Be              http://localhost:8080/products/create
    Input Text                      //*[@id="product_name"]     product1
    Sleep                           2
    Input Text                      //*[@id="product_price"]    12
    Sleep                           2
    Click Element                   //*[@id="create-product"]/form/div[4]/button 
    Sleep                           1        
    Page Should Contain             Product created successfully
