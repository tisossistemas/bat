@echo off
rem script bat para acelerar a internet escrito por PRINCE
rem start script
cls
@echo.
@echo    ***********************************************
@echo    ***                                         ***
@echo    ***  Procedimento para acelerar e internet  ***
@echo    ***                                         ***
@echo    ***********************************************
@echo.
set /P variavel=Para continuar pressione qualquer tecla
rem clear cache pc
ipconfig /flushdns
rem view cache pc
ipconfig /displaydns
rem restart socket for pc
netsh winsock reset 
rem clear cache UCP 
netsh int tcp set global congestionprovider=ctcp
rem UCP control navigation
netsh int tcp set global dca=enabled
rem clear ECN
netsh int tcp set global ecncapability=enabled
rem enable network adapter to load connection data
netsh int tcp set global chimney=enabled
rem Show the connection
netstat –a

