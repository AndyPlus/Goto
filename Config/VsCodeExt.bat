REM code --list-extensions | xargs -L 1 echo code --install-extension > VsCodeExt.bat

code --list-extensions --show-versions

code --install-extension alefragnani.Bookmarks
code --install-extension bierner.markdown-preview-github-styles
code --install-extension christian-kohler.npm-intellisense
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension DotJoshJohnson.xml
code --install-extension eamodio.gitlens
code --install-extension eg2.tslint
code --install-extension eriklynd.json-tools
code --install-extension GitHub.vscode-pull-request-github
code --install-extension HookyQR.beautify
code --install-extension ms-mssql.mssql
code --install-extension ms-vscode.csharp
code --install-extension ms-vscode.Go
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension robertohuertasm.vscode-icons
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension timothymclane.react-redux-es6-snippets
code --install-extension waderyan.gitblame
code --install-extension xabikos.ReactSnippets


==============================================
#VSCode tips-and-tricks

? edt
Ctrl+R


code -r .
code --diff <file1> <file2>
code --goto package.json:10:5


Pressing the Alt key enables fast scrolling in the editor and Explorers. 	


Ctrl+Shift+O  @:  	#Go to Symbol in File  
Ctrl+T  #Go to Symbol in Workspace
The Outline view in the File Explorer (default collapsed at the bottom) shows you the symbols 


Undo cursor position#
Keyboard Shortcut: Ctrl+U


Code folding#
Keyboard Shortcut: Ctrl+Shift+[ and Ctrl+Shift+]
Fold All (Ctrl+K Ctrl+0) and Unfold All (Ctrl+K Ctrl+J).

Select current line#
Keyboard Shortcut: Ctrl+L


Open Markdown preview#
In a Markdown file, use

Keyboard Shortcut: Ctrl+Shift+V



IntelliSense#
Ctrl+Space to trigger the Suggestions widget


Peek#
Select a symbol then type Alt+F12. Alternatively, you can use the context menu.


Emmet syntax#
Support for Emmet syntax.

VS Snippets in VSCode

