$servers = @('google.com', 'outlook.com', 'gmail.com')

foreach ($serverName in $servers) {
    
    $serversStatus = Test-Connection -ComputerName $serverName -Quiet -Count 1

    if ($serversStatus -eq $true) {
        Write-Output "$serverName is Up & Running"
    }
    else {
        Write-Output "$serverName is Down"
    }
}
