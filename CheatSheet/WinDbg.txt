=== WinDbg Help ===

WinDbg can access symbol or variable from a module that has symbol files(Windows .dbg) for source-level debugging

#Debugger Prepare:
* host and target computers.(user-mode and kernel-mode)  (WinDbg and VS debugger)
* Symbol Files (.pdb on Windows, 2 versions min)
* Dump files (Userdump.exe or .dump /?, 2 versions min)
* source code (Source Path)

#Help
* .help /D a* (a list of all meta-commands)
* .hh [key] (index html help)
* ? (list of all commands and operators)
* !help (list of managed code SOS.dll help)
* Open chm use Index to search keywords

#Start 1: 调试notepad
Open: WinDbg: help chm (.hh notepad) File -> Open notepad
Prepare: .sympath srv*, .reload (cache*; srv* 特殊变量key)
Symbols: x notepad!*main* (x {module}!{symbol}) 列出：开始地址，结束地址，符号名称。
Break: bu notepad!WinMain, bl, ~,~s,~0s(看右下角得知线程id)  g q (也可随时操作Debug菜单停止和继续),   [bp, bu, bm (.hh bp详细了解)]
View: lm, x notepad!*, ~, k 列出： 模块，符号，线程，堆栈。


#Start 2: 调试自己的C程序异常
.sympath srv*
.sympath+ C:\MyApp\x64\Debug
.srcpath C:\MyApp\MyApp

.reload
bu MyApp!main
g(然后用Debug菜单和源码窗口)
!analyze -v  （用来分析当前异常）

x (Examine Symbols) 
x [Options] Module!Symbol 
x [Options] *
~s (Set Current Thread) (.hh ~s详细了解)

========================================================================
#Debugger Operation:
.attach -v  .create (附加线程，启动线程) .opendump 
? dv dt  Watch ALT+2 ALT+3  (eval expr, dump var, dump type)

The copy of the executable file in memory is called the executable image or the image.
.exepath .sympath .srcpath
the .symfix (Set Symbol Store Path) command is similar to .sympath but save


#Debugging Techniques:
- Topic (TO READ)
Using the Debugger Command Window 
Methods of Controlling Breakpoints
Standard Debugging Techniques
Debugger Commands

Debugging Managed Code 
	.loadby sos clr  (Use the .load (Load Extension DLL) command to load a new DLL.) (SOS.dll provide  (CLR) environment )
	![command] [options]    
	To verify that the SOS debugging extension loaded correctly, enter the .chain command.
	To test the SOS debugging extension, enter !sos.help.
Remote Debugging Using WinDbg
	.server tcp:port=5005(自己在服务器上指定个端口)
	从客户端机器  choose Connect to Remote Session from the File menu.   tcp:Port=5005,Server=YourHostComputer
 
#Views:
Debugger Command window:  ALT+1   ALT+SHIFT+1 
Command Browser: CTRL+N   ALT+SHIFT+N 
choosing Breakpoints from the Edit menu or by pressing ALT+F9.
As an alternative to the k command, you can choose Call Stack from the View menu. 
Memory from the View menu. (You can also press ALT+5 ALT+SHIFT+5)

===============================

procdump w3wp -ma -m 8000 -o D:\Dumps （当内存超过8000M时抓取一个w3wp进程的完整Dump，并输出到D:\Dumps文件夹）
!dumpheap -stat //检查当前所有托管类型的统计信息
!dumpheap -mt 00007ffdb9386948 -min 200 //查看200byte以上的string
!do     0000021bcbaf5158 //使用!do命令查看一个对象的内容
!gcroot 0000021bcbaf5158 //使用!gcroot 查看一个对象的gc根
!DumpObj   	/d 0000021975972b48  //查看第一个JSONArray
!DumpArray 	/d 0000021975972b48  //查看数组对象元素
!DumpObj 	/d 0000021975972a08  //查看元素中的String

~* e!clrstack 	来看看所有线程的调用堆栈吧。

PrefView 

======================
.NET Core and WinDbg
0. dotnet new
1. path windbgPath;%PATH%
2. code System.Diagnostics.Debugger.Break()  (F6 attach when console.readkey()) 
3. windbg dotnet path\to\Your.dll  (first chance)
4. Enter g to go to your first breakpoint
5. .loadby sos coreclr  (!help)
6. Verbose symbol loading in WinDbg (via !sym noisy)    add <DebugSymbols>true</DebugSymbols> and <DebugType>pdbonly</DebugType>
7. !name2ee Sample.dll Sample.Program.SlowMultiply

# Native threads & stacks
~*  - shows little more information like the top method currently executing .* means all the threads
~*k - shows all the threads along with the stack
~<threadnum>s - will switch to thread number threadnum you specifiy
Now We can check how the native stack will look like by running k

# Managed Threads and Stacks
!threads !CLRStack and !dumpheap .


# We can use DumpHeap command to look for memory leak issues in our application

 !dumpheap -strings
 !dumpheap -min 85000
 !dumpheap -thinlock
 !dumpheap -type Console
 !do 0000000002355260
 
 You can do this with lm v m coreclr. Check that sos.dll exists also exists at the path. 
 If so, then a simple .loadby sos coreclr will work. 
 If your sos.dll is located in a different location, you'll need to specify it manually: .load <path>\sos.dll. 
 


