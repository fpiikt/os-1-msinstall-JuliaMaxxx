# Архиватор **7-zip** (каталог для установки - по умолчанию);
msiexec.exe /i "7z1604-x64.msi" /passive /le "C:\7zip-log.txt" /norestart TARGETDIR="C:\Program Files\7-Zip"

# Графический редактор **Paint.Net**
msiexec.exe /i "paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1

#Векторный графический редактор **Inkscape**:
msiexec.exe /i "inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"

#Офисный редактор **LibreOffice** (последней версии на сайте и русскоязычное языковое расширение для него);
msiexec.exe /i "LibreOffice_6.4.2_Win_x86.msi" /passive /lwe "C:\libreoffice-install-log.txt" /norestart
msiexec.exe /i "LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart

#Текстовый редактор **Notepad++**
msiexec.exe /i "npp.7.8.1.Installer.x64.exe" /auto
