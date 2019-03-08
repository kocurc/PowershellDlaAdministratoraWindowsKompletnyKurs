Get-Volume

'c' | Get-Volume

Get-Help Get-Volume -ShowWindow

'C' | Select-Object @{n="DriveLetter";e={$_}} | Get-Volume

'C' | Select-Object @{n="DriveLetter";e={$_}} | Get-Volume

'C' | ForEach-Object {Get-Volume -DriveLetter $_}