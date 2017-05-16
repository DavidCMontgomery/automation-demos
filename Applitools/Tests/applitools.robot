*** Settings ***
Documentation  This is some information about the suite

Library  Selenium2Library
Library  RobotAppEyes
#test from heyday
#robot -d results tests/applitools.robot

*** Variables ***
${URL}  http://z.co.nz/
${BROWSER}  chrome
${OS}  Mac OS X 10.11
${APPLITOOLS_KEY}  gG9961WJ2SX8LrX0YnwxzUz4H8aaBXPpLzar1G21ASfw110
${APPLITOOLS_APP_NAME}  Z
${APPLITOOLS_TEST_NAME}  Z Home Page
${PAGE_WIDTH}  2000
${PAGE_HEIGHT}  1000
${MATCH_LEVEL}  LAYOUT


*** Test Cases ***
Load Home Page
    [Documentation]  Test that as a user I can load the home page and confirm the layout is stable
    [Tags]  Regression

    open browser  ${URL}  ${BROWSER}
    open eyes session  ${URL}  Z Desktop  Z Home Page  ${APPLITOOLS_KEY}   width=1024  height=768  osname=${OS}  browsername=${BROWSER}  matchlevel=${MATCH_LEVEL}
    check eyes window  Z Home
    close eyes session

*** Keywords ***

