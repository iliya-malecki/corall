set args = WScript.Arguments
Dim path: path = args(0)
Dim out_path: out_path = args(1)
Set xlsapp = CreateObject("Excel.Application")
xlsapp.DisplayAlerts = False
set wb = xlsapp.WorkBooks.Open(path)
xlsapp.Run "Main" , Cstr(out_path)
wb.Close
set xlsapp = nothing