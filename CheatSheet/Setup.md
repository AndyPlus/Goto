* SqlDev.lnk   "C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\Ssms.exe" -S xxx -U xxx -P xxx -d xxx
* SqlTan.lnk  C:\Windows\System32\runas.exe /netonly /user:xxx\xxx "ssms -E -S xxxx"
* Jump.rdg
* hosts
* Powershell Profile: gg,gj,ge,vs
OpenSSH
WinTools

net use * \\hostname\E$\test\

Path:
C:\Program Files\Git\usr\bin\
C:\Windows\System32\inetsrv
C:\Program Files (x86)\MSBuild\14.0\Bin
C:\Windows\System32\drivers\etc


New-Alias vs "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"
function gj {pushd D:\JumpForward\codebase\}
function ge {taskkill /f /im devenv.exe}


ge=taskkill /f /im devenv.exe
gj=pushd D:\JumpForward\codebase\
gjf=pushd D:\JumpForward\jfui\ $T ls
gt=pushd D:\Test\ $T ls

bookmark
extension: json viewer, xml tree youddodict
notepad++ 拼写检查， markdown
任务栏固定程序和文件
Test目录创建

网络位置添加
本地目录映射
本地Path添加

set PATH=%ConEmuBaseDir%\Scripts;%PATH%
run as admin 

appwiz.cpl
netplwiz
eventvwr
compmgmt.msc