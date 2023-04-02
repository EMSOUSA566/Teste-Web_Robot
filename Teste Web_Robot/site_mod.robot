*** Settings ***
Library   ScreenCapLibrary
Library  SeleniumLibrary
Library  CsvLibrary
Documentation   Suite Exemplo webtesting
Resource        resource.robot

*** Test Cases ***
Cenário 1: Acessando o site do Robot
    Iniciar gravação de GIF
    Abrir Site
    Digitar o produto "blouse" na Pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "blouse" foi exibido corretamente
    Parar Gravação GIF