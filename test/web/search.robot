*** Settings ***
Documentation  Test scenarios for search feature
Library  Selenium2Library

*** Test Cases ***
Search on google
    Open Browser  http://www.google.com  chrome
    Maximize Browser Window
    Set Selenium Speed  0
    Capture page screenshot
    Input text  lst-ib  caracas
    Click button  name=btnG
    Wait until page contains  Caracas - Wikipedia, la enciclopedia libre
    Close browser