***Settings***
Library  Selenium2Library

***Keywords***
Open google page
    Open Browser  http://www.google.com  chrome
    Maximize Browser Window
    Set Selenium Speed  0

Search 
    [Arguments]  ${search-criteria}
    Input search criteria  ${search-criteria}
    Capture page screenshot
    Click button  name=btnG
    
Input search criteria
    [Arguments]  ${search-criteria}
    Wait Until Element Is Visible  lst-ib
    Input text  lst-ib  ${search-criteria}
    
Validate test result
    [Arguments]  ${search-result}
    Wait until page contains  ${search-result}
    Capture page screenshot