## Музыкальный пранк
Суть скрипта заключается в том что бы при запуске компьютера сказать пару слов ~~или не пару~~ и запустить музыку.
По окончании трека все файлы пранка удаляются.

### Как использовать
> Для воспроизведения подходят только файлы **.wav** формата <br />
> Для изменения трека и сообщения используйте файл **Start-Music.ps1**
* Поправьте пути в скриптах **Start-Prank.bat** и **Start-Music.ps1** <br />
* Разместите **Start-Prank.bat** в автозагрузку пользователя над которым хотите прикольнуться
```text
C:\Users\<USER_NAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
```
* Файл **Start-Music.ps1** и файл **Music.wav** разместите в директории:
```text
C:\Users\<USER_NAME>\AppData\Local\Temp\
```
Что бы скрипт запускался вне зависимости от того разрешены ли скрипты на компьютере было решено делать запуск скрипта через **.bat** файл.
В случае если этот метод вдруг не работает (что врядли возможно) Можете разрешить исполнение скриптов.
Для этого запускаем **PowerShell** от имени Администратора и вводим команду:
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