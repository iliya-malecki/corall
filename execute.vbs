Dim args: set args = WScript.Arguments
Dim path: path = args(0)
Dim out_path: out_path = args(1)
Dim xlsapp: set xlsapp = CreateObject("Excel.Application")
xlsapp.DisplayAlerts = False
Dim wb: set wb = xlsapp.WorkBooks.Open(path)
xlsapp.Run "Main" , Cstr(out_path)
wb.Close
set xlsapp = nothing