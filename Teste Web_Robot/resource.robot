*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  CsvLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php
 


*** Keywords ***
Iniciar gravação de GIF
    Start Gif Recording    name=Site  size_percentage=0.8

Abrir Site
    Open Browser  url=${URL}  browser=${BROWSER}
    ...   options=add_argument("--disable-web-security");add_argument("--start-maximized");add_experimental_option("excludeSwitches", ["enable-logging"])


Digitar o produto "blouse" na Pesquisa
    Input text   id=search_query_top   blouse

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "blouse" foi exibido corretamente
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Parar Gravação GIF
    Stop Gif Recording  