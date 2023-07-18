Function Get-RandomID {
    param(
        [int]$Length
    )

    $ID = Get-Random -Minimum ([math]::Pow(10, $Length - 1)) -Maximum ([math]::Pow(10, $Length))
    return [int]$ID
}

$IDs = @()
while ($IDs.Count -lt 500) {
    $Length = Get-Random -Minimum 4 -Maximum 7
    $ID = Get-RandomID -Length $Length

    if (-not $IDs.Contains($ID)) {
        $IDs += $ID
    }
}

$OutputTable = $IDs | Sort-Object | Format-Table -AutoSize | Out-String

$OutputFilePath = "id_values.txt"
$OutputTable | Out-File -FilePath $OutputFilePath

Write-Host "Generated 500 unique whole number ID values. Saved to $OutputFilePath."
