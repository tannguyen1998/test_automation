*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  Resources/Common.robot
Resource  Resources/amazon.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    amazon.Search for Products

Logged out uesr can view a product
    [Tags]  Smoke
    amazon.Search for Products
    amazon.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    amazon.Search for Products
    amazon.Select Products from Search Results
    amazon.Add Product to Cart

Logged out user must sign in tu check out
    [Tags]  Smoke
    amazon.Search for Producrs
    amazon.Select Product from Search Results
    amazon.Add product to Cart
    amazon.Begin Checkout


*** Keywords ***

