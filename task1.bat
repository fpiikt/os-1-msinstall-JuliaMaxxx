1. Архиватор **7-zip** (каталог для установки - по умолчанию);
  - автоматический режим - только указатель хода выполнения,
  - без перезагрузки,
  - вести журнал установки с отображением все сообщений об ошибках в файл 7zip-log.txt,
  - каталог для установки указать явно "C:\Program Files\7-Zip",

msiexec.exe /i "7z1604-x64.msi" /passive /le "C:\7zip-log.txt" /norestart TARGETDIR="C:\Program Files\7-Zip"

2. Графический редактор **Paint.Net**:
  - полностью автоматическая установка (в том числе и согласие с лицензией),
  - на рабочий стол вывести ярлык для запуска приложения,
  - каталог для установки — "C:\Program Files\Graphics\Paint"

msiexec.exe /i "paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1

3. Векторный графический редактор **Inkscape**:
  - установка с сокращенным интерфейсом,
  - без перезапуска,
  - вести журнал установки с отображением всех сообщений об устранимых ошибках в файл inkscape-log.txt,
  - каталог для установки указать явно "C:\Program Files\Graphics\Inkscape"

msiexec.exe /i "inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"

4. Офисный редактор **LibreOffice** (последней версии на сайте и русскоязычное языковое расширение для него);
  - автоматический режим - только указатель хода выполнения,
  - без перезагрузки после установки LibreOffice, но с перезагрузкой после установки языкового расширения,
  - вести журнал установки с отображением все сообщений об ошибках в файл libreoffice-install-log.txt,
  - каталог для установки - по умолчанию

msiexec.exe /i "LibreOffice_6.4.2_Win_x86.msi" /passive /le "C:\libreoffice-install-log.txt" /norestart
msiexec.exe /i "LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart

5. Текстовый редактор **Notepad++**:
  - полностью автоматическая установка,
  - установка в директорию по умолчанию

msiexec.exe /i "npp.7.8.1.Installer.x64.exe" /auto
