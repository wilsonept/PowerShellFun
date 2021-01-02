$String = 'ПРИВЕТ АЛЕКСИЙ! ,,,,,,,,,,,,,,,,С НОВЫМ ГОДОМ ЙОПТА!'

$bat = 'C:\Users\<USER_NAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Start-Prank.bat'
$wav = 'C:\Users\<USER_NAME>\AppData\Local\Temp\Music.wav'
$ps1 = 'C:\Users\<USER_NAME>\AppData\Local\Temp\Start-Music.ps1'

function Start-Speech($String)
{
    Add-Type –AssemblyName System.Speech
    $SpeechSynthesizer = [System.Speech.Synthesis.SpeechSynthesizer]::new()
    $SpeechSynthesizer.SelectVoice('Microsoft Irina Desktop')
    $SpeechSynthesizer.Speak($string)
}

function Start-Music($Path)
{
    $global:Player = New-Object -TypeName System.Media.SoundPlayer
    $Player.SoundLocation = $Path
    $Player.Play()
    Write-Host 'что бы остановить музыку введите команду:'
    Write-Host '$Player.Stop()' -ForegroundColor Green
}

function Remove-Prank ($bat, $wav, $ps1)
{
    $Command = "Start-Sleep 3; Remove-Item $bat,$wav,$ps1"
    C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command $Command
}

# Произнести приветственную фразу
Start-Speech -String $String

# Начать проигрывание музыки
Start-Music -Path $wav

# Удалить файлы розыгрыша
Remove-Prank -bat $bat -wav $wav -ps1 $ps1