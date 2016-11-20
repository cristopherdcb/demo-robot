*** Settings ***
Documentation  Test scenarios for search feature using data test driven approach
Library  Selenium2Library
Resource  ../../resources/resource-web.robot
Test template   Search on google
Test teardown  Close browser

*** Test Cases ***    SEARCH CRITERIA      SEARCH RESULT                               
Search city           caracas              Caracas - Wikipedia, la enciclopedia libre
Search country        venezuela            Venezuela

*** Keywords ***
Search on google
    [Arguments]  ${search-criteria}  ${search-result}
    Open google page
    Search  ${search-criteria}
    Validate test result  ${search-result}