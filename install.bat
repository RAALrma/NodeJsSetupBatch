REM CHocolateyをインストール
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Git、Atom、Nodistをインストール
choco install Git Atom Nodist -y

REM Node.js、npmをインストール
nodist global 9.11.2
nodist npm match

REM mocha、istanboolをインストール
npm install -g mocha
npm install -g nyc
