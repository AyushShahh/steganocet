' Copyright 2021 Ayush Shah

' Licensed under the Apache License, Version 2.0 (the "License");
' you may not use this file except in compliance with the License.
' You may obtain a copy of the License at

' http://www.apache.org/licenses/LICENSE-2.0

Set objArgs = WScript.Arguments
Set FS = CreateObject("Scripting.FileSystemObject")
InputFolder = FS.GetAbsolutePathName(objArgs(0))
ZipFile = FS.GetAbsolutePathName(objArgs(1))

CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" & Chr(5) & Chr(6) & String(18, vbNullChar)

Set objShell = CreateObject("Shell.Application")

Set source = objShell.NameSpace(InputFolder).Items

objShell.NameSpace(ZipFile).CopyHere(source)

wScript.Sleep 3000
