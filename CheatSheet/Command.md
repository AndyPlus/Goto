sp_who2
sp_rename
sp_help = Alt + F1

vim  filename +546
vim  filename +/killproc
notepad++ filename -n1500
充分利用NotePad++的搜索标记功能

dnSpy了解一下。
setx

=============  CMD: =================
subst /?
alias /?
set /?
path /?
cipher /?
Robocopy /?

dir | clip
color title fc

sc query
tasklist /SVC
net start

whoami /all
quser /SERVER:myserver
qwinsta

appcmd list site
appcmd list trace
net helpmsg 64

==================PowerShell==============
help *key*
help gwmi -e (-s -o)

gcm *key*
gcm get-*

gal *alias*
gal -d *Command*

gi * = gci = dir = ls 
dir -r  vs dir /s
gsv gps |gm
ps|sort -p ws|select -last 5 -prop id,name,ws|ft
gcm gal gdr, ii, ?=where, %=foreach

============================================================

搜命令：
which {command}
where /R {path} {pattern}

搜文件:
find -name "query"
dir /s *.xls 

搜字串：
grep -R  "what" "where"
findstr(find) "what" "where" 

==============================

搜库(比普通grep更快)：
git log --author=Jon
git log --grep=JF-7813

git ls-files "*middleware*"
git ls-files -v |grep "^S"

git grep -n "hello" v2.5
git grep solution -- :^Documentation

=====================================
VIM:
By words: web
By paragraph: {}
By marker: mx   'x   
By last: ''	  '.  
other: gg G %

* Edit: dxyp u. > o 3x dw
* Search: /?  *#   nN  (:set hlsearch)
* Replace: :%s/foo/bar/g

* gd & gD  - go to definition of local(global) symbol under cursor;
* ^N (in insert mode) automatic word completion

=========Develop=======================
dotnet ef
msbuild
nuget
code
node
npm -v -i -g npm@latest, npm init. npm publish, npm config ls, exports.

VsDevCmd.bat
clrver -all
Procdump 


============Chrome Console API============
console.warn('%chello world','font-size:25px;color:red;');

var data =[{a:1,b:2},{a:2,b:1}]
console.table(data);

console.assert
console.count
console.log(document.body);


Command Line API
* $$('body')
* monitor & unmonitor - monitor("resize")
* debug & undebug - debug("resize") debugger

===============================

1. fc, diff     find,grep  netstat -anop
2. npm -i,         node debug index.js                npm config ls



