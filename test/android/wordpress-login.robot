*** Settings ***
Documentation     A resource file with reusable keywords and variables

Resource          ../../resources/resource-android-commons.robot
Resource          ../../resources/wordpress.robot

Test setup       Start app
Test teardown    Close application
*** Variables ***
${login}     demorobot
${password}  D3m0r0b0t

*** Test cases ***
Success login
	Validate that app is opened at login page
	Login  ${login}  ${password}
	Validate that login succeeded 
	
Fail login
	Validate that app is opened at login page
	Login  invaliduser  invalidpassword
	Sleep  5s
	Validate that app is opened at login page