#This generates 3000 fake human names from the array of FirstName and LastName
#Combine with the MakeApps.ps1 and MakeIDs.ps1 to create a believable list of applications with names, IDs and support teams


$FirstNames = @(
    "Adam", "Ahmed", "Aiden", "Akira", "Alina", "Amara", "Amina", "Anaya", "Anika", "Anya",
    "Aria", "Arjun", "Aryan", "Ashton", "Aya", "Ayden", "Aylin", "Bella", "Caleb", "Carlos",
    "Carter", "Chloe", "Christian", "Christopher", "Clara", "Daniel", "David", "Eliana", "Elijah",
    "Emily", "Emma", "Ethan", "Eva", "Ezekiel", "Fatima", "Finn", "Gabriel", "Grace", "Hannah",
    "Harper", "Isaac", "Isabella", "Ishaan", "Jacob", "James", "Jayden", "Jaxon", "Jayla",
    "John", "Jonathan", "Joseph", "Joshua", "Julian", "Kai", "Kaleb", "Kate", "Kayla",
    "Kevin", "Laila", "Landon", "Lea", "Leah", "Leo", "Liam", "Lila", "Lily",
    "Logan", "Lucas", "Luke", "Mason", "Mateo", "Matthew", "Maya", "Mia", "Micah",
    "Mila", "Mohamed", "Muhammad", "Naomi", "Natalia", "Nathan", "Nora", "Oliver", "Olivia",
    "Oscar", "Owen", "Raphael", "Riley", "Riya", "Ryan", "Samuel", "Sarah", "Sofia",
    "Sophia", "Sophie", "Stella", "Tyler", "Valentina", "Victoria", "William", "Zachary", "Zara", "Zoe"
)

$Surnames = @(
    "Abraham", "Ahmed", "Alvarez", "Anderson", "Baker", "Brown", "Campbell", "Carter", "Chen", "Choi",
    "Clark", "Cohen", "Collins", "Cook", "Cooper", "Davies", "Davis", "Diaz", "Evans", "Fisher",
    "Garcia", "Gonzalez", "Gray", "Green", "Gupta", "Hall", "Harris", "Hernandez", "Hill", "Huang",
    "Hughes", "Jackson", "Jiang", "Johnson", "Jones", "Kaur", "Kelly", "Kim", "Kumar", "Lee",
    "Lewis", "Liu", "Lopez", "Martin", "Martinez", "Miller", "Mitchell", "Mohamed", "Morgan", "Morris",
    "Murphy", "Nguyen", "Patel", "Perez", "Phillips", "Price", "Ramirez", "Reed", "Reyes", "Rivera",
    "Roberts", "Robinson", "Rodriguez", "Rossi", "Russell", "Sanchez", "Santos", "Scott", "Shah", "Singh",
    "Smith", "Stewart", "Sullivan", "Taylor", "Thompson", "Torres", "Turner", "Vargas", "Walker", "Wang",
    "Ward", "Williams", "Wilson", "Wright", "Xu", "Yang", "Zhang", "Zhao"
)

$OutputFile = "random_names.txt"

$NamesCount = 3000

$Random = New-Object System.Random
$Names = @()

for ($i = 1; $i -le $NamesCount; $i++) {
    $FirstName = $FirstNames[$Random.Next(0, $FirstNames.Count)]
    $Surname = $Surnames[$Random.Next(0, $Surnames.Count)]

    $FullName = "$FirstName $Surname"
    $Names += $FullName
}

$Names | Out-File -FilePath $OutputFile

Write-Host "Random names have been generated and saved to $OutputFile."