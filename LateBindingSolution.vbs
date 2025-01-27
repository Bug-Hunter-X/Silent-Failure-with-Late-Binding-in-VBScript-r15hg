The solution involves using error handling (On Error Resume Next) to check for runtime errors after the late-bound method call. If an error occurs (error number 438: Object doesn't support this property or method), the script can handle it gracefully instead of silently failing. 

```vbscript
On Error Resume Next
Set obj = CreateObject("Scripting.FileSystemObject")
result = obj.NonExistentMethod()
if Err.Number <> 0 then
  MsgBox "Error: " & Err.Description
  Err.Clear
end if
Set obj = Nothing
```