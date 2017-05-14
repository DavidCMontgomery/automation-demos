*** Settings ***
Documentation  This is some information about the suite

Library  Selenium2Library
Library  RobotAppEyes
#test from heyday
#robot -d results tests/applitools.robot

*** Variables ***
${URL}  http://z.co.nz/
${BROWSER}  chrome
${APPLITOOLS_KEY}  gG9961WJ2SX8LrX0YnwxzUz4H8aaBXPpLzar1G21ASfw110

*** Test Cases ***
Load Home Page
    [Documentation]  Test that as a user I can load the home page and confirm the layout is stable
    [Tags]  Regression

    open browser  ${URL}  ${BROWSER}

    open eyes session  ${URL}  RobotAppEyes_Test  Z_RobotAppEyes_Test  gG9961WJ2SX8LrX0YnwxzUz4H8aaBXPpLzar1G21ASfw110  width=1024  height=768
    check eyes window  Z Home


*** Keywords ***
