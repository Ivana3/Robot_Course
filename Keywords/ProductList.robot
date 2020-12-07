*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/ProductList.robot

*** Keywords ***
NavigateToComputersMenu
    Maximize Browser Window
    Wait Until Element Is Visible    ${ComputersMenu}
    Click Element    ${ComputersMenu}

ClickNotebooksCategory
    Wait Until Element Is Visible    ${NotebooksCategory}
    sleep    1s
    Click Element    ${NotebooksCategory}
    sleep    1s
    Wait Until Element Is Visible    ${NotebooksTitle}

SelectI5CPU
    sleep    1s
    Click Element    ${IntelCore5}
    sleep    1s
    Wait Until Element Is Visible    ${Memory}

Select8GbRAM
    sleep    1s
    Click Element    ${8GB}
    sleep    1s
    Wait Until Element Is Visible    ${FilterMessage}
