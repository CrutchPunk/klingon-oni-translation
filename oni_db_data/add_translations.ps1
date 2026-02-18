# Add New Translations to PO File
# Script to add worksheet translations to strings.po

Write-Host "Adding new Klingon translations to PO file..." -ForegroundColor Green

# Define new translations (from worksheet)
$translations = @{
    # Power Systems
    "Coal Generator" = "ghItlh chay'wI'"
    "Manual Generator" = "bel chay'wI'"
    "Natural Gas Generator" = "natlh chay'wI'"
    "Hydrogen Generator" = "bIQ'a' chay'wI'"
    "Petroleum Generator" = "qettlh chay'wI'"
    "Wire" = "taDghom"
    "Battery" = "jup"
    "Transformer" = "HoS le'"
    "Power Switch" = "HoDwI'"
    
    # Plumbing Systems
    "Liquid Pump" = "bIQ Suq"
    "Liquid Pipe" = "bIQ qeylI'"
    "Liquid Valve" = "bIQ 'uy'"
    "Liquid Filter" = "bIQ ghoch"
    "Gas Pump" = "Suq"
    "Gas Pipe" = "qeylI'"
    "Gas Valve" = "'uy'"
    "Gas Filter" = "ghoch"
    
    # Life Support
    "Oxygen" = "tlhol"
    "Carbon Dioxide" = "tlholQe'"
    "Air Deodorizer" = "tlhomwI'"
    "Water" = "bIQ"
    "Polluted Water" = "bIQ qagh"
    "Water Sieve" = "bIQ chenmoHwI'"
    "Shower" = "bIQ batlh"
    
    # Building Materials
    "Iron" = "baS"
    "Steel" = "DIch baS"
    "Copper" = "'aw'"
    "Gold" = "Doq"
    "Aluminum" = "pIch"
    "Sand" = "tlhargh"
    "Glass" = "qoD"
    "Concrete" = "nagh chen"
    "Plastic" = "qogh"
}

# Backup original PO file
$poFile = "strings.po"
$backupFile = "strings_backup.po"
if (Test-Path $poFile) {
    Copy-Item $poFile $backupFile
    Write-Host "Created backup: $backupFile" -ForegroundColor Yellow
}

# Read current PO file
$poContent = Get-Content $poFile

# Add new translations
$newEntries = @()
foreach ($english in $translations.Keys) {
    $klingon = $translations[$english]
    
    $newEntry = @"

#. STRINGS.BUILDINGS.PREFABS.$($english.ToUpper().Replace(" ", "")).NAME
msgctxt ""STRINGS.BUILDINGS.PREFABS.$($english.ToUpper().Replace(" ", "")).NAME""
msgid ""$english""
msgstr ""$klingon""
"@
    $newEntries += $newEntry
}

# Append new translations to PO file
$newEntries | Add-Content $poFile

Write-Host "Added $($translations.Count) new translations to PO file" -ForegroundColor Green
Write-Host "Total translations will be: $(367 + $translations.Count)" -ForegroundColor Green
Write-Host "New coverage: $([math]::Round((367 + $translations.Count) / 19584 * 100, 2))%" -ForegroundColor Green

Write-Host "Translation update complete!" -ForegroundColor Green
Write-Host "Ready to test in-game!" -ForegroundColor Green
