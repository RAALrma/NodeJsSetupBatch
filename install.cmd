REM Chocolatey���C���X�g�[��
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Git�AAtom�ANodist���C���X�g�[��
choco install Git Atom Nodist -y

REM ���ϐ��̍ēǂݍ���
start /B refreshenv

REM Node.js�Anpm���C���X�g�[��
start /B /I nodist global 9.11.2 && timeout 30
start /B /I nodist npm match && timeout 30

REM mocha�Aistanbool���C���X�g�[��
npm install -g mocha
npm install -g nyc

REM �C���X�g�[���I��
REM �E�B���h�E����Ă��������B
