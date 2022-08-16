'Get todays date
dDate = Now

'Split it so can be used in a filename
sDate = Day(dDate) & "." & Month(dDate) & "." & Year(dDate) & "_" & _
Mid("0", 1+Hour(dDate)\10) & Hour(dDate) & "." & Mid("0", 1+Minute(dDate)\10) & Minute(dDate) & "." & Mid("0", 1+Second(dDate)\10) & Second(dDate)

'Create a new shell object and open telnet
set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.run("telnet.exe")  
WScript.Sleep 500

'Send the command to log the telnet session to a log file named "filename" add date and time stamp for record
WshShell.SendKeys("set logfile " & "filename_" & sDate & ".txt" & "{Enter}")
WScript.Sleep 500

'Open telent session with ip 0.0.0.0
WshShell.SendKeys("open 0.0.0.0" & "{Enter}")
WScript.Sleep 500

'You can keep sending any commands you need

