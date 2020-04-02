#Установка Java Runtime Environment + скрипт, позволяющий установить JRE 8 с использованием
#конфигурационного файла, содержащего следующие параметры

jre-8u241-windows-x64.exe INSTALLCFG="%cd%jre-8_configuration.txt" /L "%cd%jre-log.txt"
