$servers = @('google.com', 'outlook.com', 'gmail.com', 'bxvyuhsdbjndljfv.com')

$servers.foreach({
    $serverName = $_
    $isServersUp = Test-Connection -ComputerName $serverName -Quiet -Count 1

    if ($isServersUp -eq $true) {
        Write-Output "$serverName is Up & Running"
    }
    else {
        Write-Output "$serverName is Down"
    }
})