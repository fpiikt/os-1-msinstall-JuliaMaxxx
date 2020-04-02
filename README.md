## Задание 1. Создание скрипта для автоматизации установки под Windows

### `task1.bat`
Был написан скрипт для установки дистрибутивов следующего ПО:

__Архиватор 7-zip__
```shell
msiexec.exe /i "7z1604-x64.msi" /passive /le "C:\7zip-log.txt" /norestart TARGETDIR="C:\Program Files\7-Zip"
```
  - `/passive` - автоматический режим - только указатель хода выполнения
  - `/norestart` - без перезагрузки
  - `/le "C:\7zip-log.txt"` - вести журнал установки с отображением все сообщений об ошибках в файл
  - `TARGETDIR="C:\Program Files\7-Zip" ` - каталог для установки указан явно    

__Графический редактор PaintNet__
```shell
msiexec.exe /i "paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1
```
  - `/auto` - полностью автоматическая установка (в том числе и согласие с лицензией)
  - `DESKTOPSHORTCUT=1` - на рабочий стол вывести ярлык для запуска приложения
  - `TARGETDIR="C:\Program Files\Graphics\Paint"` - каталог для установки


__Векторный графический редактор Inkscape__
```shell
msiexec.exe /i "inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
```
  - `/qr` - установка с сокращенным интерфейсом
  - `/norestart` - без перезапуска
  - `/lw "C:\inkscape-log.txt"` - вести журнал установки с отображением всех сообщений об устранимых ошибках в файл
  - `TARGETDIR="C:\Program Files\Graphics\Inkscape"` - каталог для установки указан явно

__Офисный редактор LibreOffice (последней версии на сайте и русскоязычное языковое расширение для него)__
```shell
msiexec.exe /i "LibreOffice_6.4.2_Win_x86.msi" /passive /lwe "C:\libreoffice-install-log.txt" /norestart
msiexec.exe /i "LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart
```
  - `/passive` - автоматический режим - только указатель хода выполнения
  - `/norestart` - без перезагрузки после установки LibreOffice
  - `/forcerestart` - с перезагрузкой после установки языкового расширения
  - `/lwe "C:\libreoffice-install-log.txt"` - вести журнал установки с отображением все сообщений об ошибках в файл
  - `/quiet` - тихая загрузка

__Текстовый редактор Notepad++__
```shell
msiexec.exe /i "npp.7.8.1.Installer.x64.exe" /auto
```
  - `/auto` - полностью автоматическая установка

  ---
  ### `jre-8_configuration.txt`
  Конфигурационный файл, содержащий следующие параметры:
  ```shell
  INSTALL_SILENT=Enable
  INSTALLDIR=C:\Java\JRE
  WEB_ANALYTICS=Disable
  WEB_JAVA=Enable
  ```
  - `INSTALL_SILENT=Enable` - автономный режим установки (без задания вопросов пользователю)
  - `INSTALLDIR=C:\Java\JRE` - каталог для установки java
  - `WEB_ANALYTICS=Disable` - отключить отправку веб-аналитики на сервера Oracle
  - `WEB_JAVA=Enable` - разрешить запуск веб-приложений Java в браузере
  ---
  ### `jre-8.bat`
  Установка Java Runtime Environment с использованием конфигурационного файла
  ```shell
  "jre-8u241-windows-x64.exe" INSTALLCFG="%cd%jre-8_configuration.txt" /L "%cd%jre-log.txt"
  ```
  - `/L "%cd%jre-log.txt"` - создание лог-файла с результатами установки
  - `INSTALLCFG="%cd%jre-8_configuration.txt"` - установка с использованием конфигурационного файла
  - `%cd` - возврат рабочей директории
