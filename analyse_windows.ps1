Write-Output "===== ANALYSE DES LOGS WINDOWS ====="
Get-Date

Write-Output "`n1. Erreurs dans le journal Système"
Get-EventLog -LogName System -EntryType Error -Newest 3

Write-Output "`n2. Erreurs dans le journal Application"
Get-EventLog -LogName Application -EntryType Error -Newest 3
