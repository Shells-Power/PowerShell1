$servers = @('google.com', 'outlook.com', 'gmail.com', 'sdhcvgsvujdch.com')

$servers | ForEach-Object -Process {
    $serverName = $_
    $serversStatus = Test-Connection -ComputerName $serverName -Quiet -Count 1

    if ($serversStatus -eq $true) {
        Write-Output "$serverName is Up & Running"
    }
    else {
        Write-Output "$serverName is Down"
    }
}