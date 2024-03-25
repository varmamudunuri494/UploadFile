*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../UploadCommonFiles/UploadCommon.robot

*** Test Cases ***
Creating a Upload File
    [Tags]             UploadFile
    [Documentation]    Uploading a File TestCase
    Appstate           Home
    LaunchApp          Sales
    ClickText          Accounts
    ClickText          Accidency Bulk Company
    #VerifyText        Notes & Attachments (0)
    ClickText          Upload Files
    #UseModal           On
    #ClickText          Done
    #UseModal           Off
