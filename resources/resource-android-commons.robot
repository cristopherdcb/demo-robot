*** Settings ***
Documentation     A resource file with reusable keywords and variables
Resource         resource-android-config.robot
Library          Collections
Library          AppiumLibrary
 
*** Keywords ***
Start app
    Open Application  ${appium-url}  platformName=Android  deviceName=${device-name}  appPackage=${android-app-package}  appMainActivity=${android-app-activity}  fullReset=${reset}  app=${app-path}  language=${language}   platformVersion=${android-version}
