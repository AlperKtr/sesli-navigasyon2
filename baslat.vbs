Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
strDir = fso.GetParentFolderName(WScript.ScriptFullName)

strPythonw = "C:\Users\alper\AppData\Local\Python\bin\pythonw.exe"
strLauncher = strDir & "\desktop_app\launcher.py"

If fso.FileExists(strPythonw) Then
    WshShell.Run """" & strPythonw & """ """ & strLauncher & """", 0, False
Else
    WshShell.Run """" & strDir & "\web-baslat.bat""", 1, False
End If

