#Smaller scale verion of MakeMorePeople.ps1, should generate 50

Function Get-RandomName {
	$FirstNameList = @("John", "Jane", "Michael", "Sarah", "Robert", "Emily", "David", "Jessica", "William", "Olivia", "Steve", "Mark", "Bob", "Tom", "Todd", "Chris", "Susan", "Amber", "Brad", "Erik", "Harald", "Alan")
	$LastNameList = @("Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor", "Payne", "Beal", "Bissell", "Adams", "Valliere", "Gordon", "Morello", "Wilk", "Leifson", "Ericson", "Bluetooth", "Nakatomo", "Rickman", "McClane")
	
	$FirstName = Get-Random -InputObject $FirstNameList
	$LastName = Get-Random -InputObject $LastNameList
	
	return "$FirstName" + " $LastName"
	
}


$People = @()
for ($i = 1; $i -le 50; $i++) {
    $Name = Get-RandomName
    
    $Person = [PSCustomObject]@{
        Name = $Name
    }

    $People += $Person
}

$People = $People

$OutputFilePath = "fictional_people.txt"
$People | Export-Csv -Path $OutputFilePath -NoTypeInformation

Write-Host "Fictional people data has been generated and saved to $OutputFilePath."