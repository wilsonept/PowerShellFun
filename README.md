## Музыкальный пранк
Суть скрипта заключается в том что бы при запуске компьютера сказать пару слов ~~или не пару~~ и запустить музыку.
По окончании трека выполнение скрипта прекращается.

### Как использовать
> Для воспроизведения подходят только файлы **.wav** формата <br />
> Для изменения трека и сообщения используйте файл **Start-Music.ps1**

Разместите **Start-Prank.bat** в автозагрузку пользователя над которым хотите прикольнуться
```text
C:\Users\<USER_NAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
```
Файл **Start-Music.ps1** и файл **Music.wav** разместите в директории:
```text
C:\Windows\Temp\
```
Если скрипт не работает попробуйте разрешить исполнение скриптов. Для этого запускаем **PowerShell** от имени Администратора и вводим команду:
```powershell
Set-ExecutionPolicy Unrestricted
```
Для запрета скриптов используйте команду:
```powershell
Set-ExecutionPolicy Restricted
```
По умолчанию окно консоли скрыто. Для остановки музыки можно просто завершить процесс **powershell**
Или изменить **Start-Prank.bat** убрав ключ со значение **-WindowStyle Hidden**. Таким образом окно будет активно, и можно будет остановить воспроизведение командой:
```powershell
$Player.Stop()
```

Для автоматического *"затирания следов"* укажите все необходимые пути в файле **Start-Music.ps1**
```powershell
$bat = 'C:\Users\<USER_NAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Start-Prank.bat'
$wav = 'C:\Windows\Temp\Music.wav'
$ps1 = 'C:\Windows\Temp\Start-Music.ps1'
```

### Удачного прикола! =)