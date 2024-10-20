# Export system specifications to a file
Write-Output "Getting system information..." > system_specs.txt
Write-Output "`n`nCPU Info:" >> system_specs.txt
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 >> system_specs.txt
Write-Output "`n`nMemory Info:" >> system_specs.txt
Get-Process | Sort-Object WS -Descending | Select-Object -First 5 >> system_specs.txt
Write-Output "`n`nDisk Info:" >> system_specs.txt
Get-PSDrive -PSProvider FileSystem >> system_specs.txt
Write-Output "`n`nOS Info:" >> system_specs.txt
Get-ComputerInfo | Select-Object -Property CsName, WindowsVersion, WindowsBuildLabEx, OsArchitecture, OsLanguage, TimeZone >> system_specs.txt

Write-Output "System specifications saved to system_specs.txt"
