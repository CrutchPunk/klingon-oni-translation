# Extract Building Names from ONI .pot Template
# Extracts STRINGS.BUILDINGS.PREFABS.*.NAME entries for translation priority

param(
    [string]$PotFile = "C:\Users\MonoS\Downloads\strings_template.pot",
    [string]$OutputFile = "building_names_extracted.txt"
)

Write-Host "Extracting building names from ONI .pot template..." -ForegroundColor Green

# Read the .pot file and extract building names
$buildingNames = @()
$content = Get-Content $PotFile -Encoding UTF8

for ($i = 0; $i -lt $content.Length; $i++) {
    $line = $content[$i]
    
    # Look for STRINGS.BUILDINGS.PREFABS.*.NAME context lines
    if ($line -match 'msgctxt "STRINGS\.BUILDINGS\.PREFABS\.([^"]+)\.NAME"') {
        $buildingId = $Matches[1]
        
        # Get the next line which should contain the msgid
        if ($i + 1 -lt $content.Length) {
            $nextLine = $content[$i + 1]
            if ($nextLine -match 'msgid "([^"]+)"') {
                $buildingName = $Matches[1]
                
                # Skip entries with variables or complex formatting
                if (-not ($buildingName -match '\{|\<|\>|\\n')) {
                    $buildingNames += [PSCustomObject]@{
                        ID = $buildingId
                        Name = $buildingName
                        Context = "STRINGS.BUILDINGS.PREFABS.$buildingId.NAME"
                    }
                }
            }
        }
    }
}

# Sort by name for easier translation work
$buildingNames = $buildingNames | Sort-Object Name

Write-Host "Found $($buildingNames.Count) building names" -ForegroundColor Yellow

# Output to file
$output = @()
$output += "# ONI Building Names for Klingon Translation"
$output += "# Extracted from: $PotFile"
$output += "# Total entries: $($buildingNames.Count)"
$output += ""
$output += "## Building Names (sorted alphabetically)"
$output += ""

foreach ($building in $buildingNames) {
    $output += "**$($building.Name)**"
    $output += "- Context: `$($building.Context)`"
    $output += "- ID: `$($building.ID)`"
    $output += "- Klingon: _[TODO]_"
    $output += ""
}

$output | Out-File -FilePath $OutputFile -Encoding UTF8
Write-Host "Building names exported to: $OutputFile" -ForegroundColor Green

# Also create a simple list for quick reference
$simpleList = @()
$simpleList += "# Simple Building Names List"
$simpleList += "# For quick Klingon translation reference"
$simpleList += ""

foreach ($building in $buildingNames) {
    $simpleList += "$($building.Name)"
}

$simpleListFile = "building_names_simple.txt"
$simpleList | Out-File -FilePath $simpleListFile -Encoding UTF8
Write-Host "Simple list exported to: $simpleListFile" -ForegroundColor Green

Write-Host "`nTop 20 Building Names:" -ForegroundColor Cyan
$buildingNames | Select-Object -First 20 | ForEach-Object {
    Write-Host "  $($_.Name)" -ForegroundColor White
}

Write-Host "`nReady for Klingon translation work!" -ForegroundColor Green
