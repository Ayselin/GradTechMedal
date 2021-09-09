function Build-MedalTable {
    param
    (
        [Parameter(Mandatory)]
        [array]
        $Medals
    )

    $hash =@{}

    # Add your code here
    # Create a medal table based on the provided result list
    # First place gives 3 points, second place 2 points and third place 1 point
    $tbl = $Medals.podium | ForEach-Object { 
      [PSCustomObject]@{
         Name=$_.split('.')[1] 
         Value= 4 -$_.split('.')[0]
      }
    }

    $summary = $tbl | Group-Object -Property Name | %{
        New-Object psobject -Property @{
            Name = $_.Name
            Value = ($_.Group | Measure-Object Value -Sum).Sum
        }
    }

    $summary |  Foreach { $hash[$_.Name] = $_.Value }

    $hash
}
