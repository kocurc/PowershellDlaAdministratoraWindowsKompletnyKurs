[CmdletBinding()]
Param(
    [Parameter(Mandatory=$True)]
    [string]$FolderPath='C:\Users\xxx\Desktop\Test',
    [Parameter(Mandatory=$True)]
    [DateTime]$LastWriteDate=(Get-Date).AddYears(-1)
)

Get-ChildItem $FolderPath | Where-Object -Property LastWriteTime -GT $LastWriteDate