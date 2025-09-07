$Tables = "./windows-baseline", "./windows-update", "./windows-extras", "./windows-asr"  | ForEach-Object {
    $Path = $_
    New-MDHeader -Text $Path -Level 2
    "`n"
    Get-ChildItem -Path $Path -Recurse -Include "*.json" |
    ForEach-Object { 
        $File = $_
        $Props = Get-Content -Path $File.FullName | `
            ConvertFrom-Json | `
            Select-Object -Property "name", "displayName", "description"
        if ($null -ne $Props.description) {
            [PSCustomObject] @{
                Name        = $(if ($null -eq $Props.name) { $Props.displayName } else { $Props.name })
                Description = $Props.description
            }
        }
    } | New-MDTable -Shrink
    "`n"
} 

$Content = @"
# Policies

$Tables
"@
$Content | Set-Content -Path "./POLICIES.md"
