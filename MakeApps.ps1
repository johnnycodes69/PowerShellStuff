$Keywords = @(
    "Bank",
    "Finance",
    "Payment",
    "Transaction",
    "Account",
    "Deposit",
    "Withdrawal",
    "Loan",
    "Credit",
    "Investment",
    "Risk",
    "Security",
    "Compliance",
    "Audit",
    "Fraud",
    "Analytics",
    "Reporting",
    "Dashboard",
    "Customer",
    "Portal",
    "Mobile",
    "Digital",
    "Online",
    "Wealth",
    "Asset",
    "Cash",
    "Portfolio",
    "Budget",
    "Exchange",
    "Currency",
    "Market",
    "Stock",
    "Bond",
    "Trading",
    "Insurance",
    "Policy",
    "Underwriting",
    "Claims",
    "Risk",
    "Regulation",
    "Compliance",
    "AML",
    "KYC"
)

$ApplicationNames = @()
while ($ApplicationNames.Count -lt 500) {
    $Name = $Keywords | Get-Random
    $Name += Get-Random $Keywords
    $Name += Get-Random $Keywords

    if (-not $ApplicationNames.Contains($Name)) {
        $ApplicationNames += $Name
    }
}

$OutputTable = $ApplicationNames | Format-Table -AutoSize | Out-String

$OutputFilePath = "bank_application_names.txt"
$OutputTable | Out-File -FilePath $OutputFilePath

Write-Host "Generated 500 unique bank application names. Saved to $OutputFilePath."