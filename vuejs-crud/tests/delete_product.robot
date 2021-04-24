*** Settings ***
Resource                        Resource.robot
Suite Setup                     Open Website
Test Teardown                   Custom Teardown

*** Keywords ***
Custom Teardown
    Close Browser

*** Test Cases ***
Click 'Delete' and delete a product
    Click Element                   //*[@id="all-products"]/table/tbody/tr[1]/td[4]/a[2]
    Location Should Be              http://localhost:8080/products/delete/1
    Page Should Contain             Delete Product
    Click Element                   //*[@id="delete-product"]/form/p/button
    Sleep                           2
    Page Should Not Contain         Fire TV Stick