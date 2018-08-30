REM Chocolateyをインストール
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Git、Atom、Nodistをインストール
choco install Git Atom Nodist -y

REM Node.js、npmをインストール
REM nodistが自動で終了しないため、インストール終了を待つ。
start /B /I nodist global 9.11.2 && timeout 30
start /B /I nodist npm match && timeout 30

REM mocha、istanboolをインストール
npm install -g mocha
npm install -g nyc

echo インストール終了
echo ウィンドウを閉じてください。
