@echo off
echo Gathering login report (Console and Remote)... (https://github.com/Darabium)
powershell -NoProfile -Command ^
"Get-WinEvent -FilterHashtable @{LogName='Security';Id=4624} -MaxEvents 2000 | ForEach-Object { ^
    $p = $_.Properties; ^
    [PSCustomObject]@{ ^
        Time = $_.TimeCreated; ^
        User = $p[5].Value; ^
        IP = if ($p[18].Value -eq '::1' -or $p[18].Value -eq '127.0.0.1') { '' } else { $p[18].Value }; ^
        LogonType = $p[8].Value ^
    } ^
} | Where-Object { $_.LogonType -eq 2 -or $_.LogonType -eq 10 } | Sort-Object Time -Descending | Export-Csv -Path logon_report.csv -NoTypeInformation -Encoding UTF8"

echo Report is ready: logon_report.csv
pause
