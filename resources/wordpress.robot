*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library          AppiumLibrary

*** Keywords ***
Validate that app is opened at login page
	Wait until page contains element  id=org.wordpress.android:id/nux_username

Login
	[Arguments]  ${login}  ${password}
	Capture page screenshot
	Input text  id=org.wordpress.android:id/nux_username  ${login}
	Input password  id=org.wordpress.android:id/nux_password  ${password}
	Click element  id=org.wordpress.android:id/nux_sign_in_button

Validate that login succeeded 
	Wait until page contains element  id=org.wordpress.android:id/my_site_title_label
	Capture page screenshot
	