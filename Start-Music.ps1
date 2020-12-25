$String = 'ПРИВЕТ АЛЕКСИЙ! ,,,,,,,,,,,,,,,,С НОВЫМ ГОДОМ ЙОПТА!'
$Path = 'C:\Windows\Temp\Music.wav'

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

Start-Speech -String $String
Start-Music -Path $Path