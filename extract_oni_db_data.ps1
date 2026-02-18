# ONI Database Data Extraction Script
# Pulls comprehensive game data for Klingon translation

Write-Host "🖖 Extracting ONI Database for Klingon Translation..." -ForegroundColor Green

# Base URL for ONI-DB API
$baseUrl = "https://oni-db.com"

# Data categories to extract
$categories = @(
    "buildings",
    "elements", 
    "critters",
    "plants",
    "food",
    "research"
)

# Create output directory
$outputDir = "oni_db_data"
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir
}

# Extract each category
foreach ($category in $categories) {
    Write-Host "Extracting $category..." -ForegroundColor Yellow
    
    # Try API endpoint first
    $apiUrl = "$baseUrl/api/$category"
    try {
        $response = Invoke-RestMethod -Uri $apiUrl -Method Get
        $response | ConvertTo-Json -Depth 10 | Out-File "$outputDir\$category.json"
        Write-Host "✅ Extracted $category via API" -ForegroundColor Green
    }
    catch {
        Write-Host "⚠️ API not available, will need manual extraction" -ForegroundColor Red
        Write-Host "Visit: $baseUrl/$category to extract data manually" -ForegroundColor Cyan
    }
}

# Generate translation template
Write-Host "Generating translation template..." -ForegroundColor Yellow
$template = @"
# ONI Klingon Translation Template
# Generated from ONI Database extraction

## Building Translations
# Format: "English Name" → "Klingon Translation"

## Power Systems
"Coal Generator" → "ghItlh chay'wI'"
"Manual Generator" → "bel chay'wI'" 
"Wire" → "taDghom"
"Battery" → "jup"

## Elements  
"Oxygen" → "tlhol"
"Hydrogen" → "bIQ'a'"
"Water" → "bIQ"
"Steel" → "DIch baS"

## Next Steps:
1. Review extracted data files
2. Translate high-priority items
3. Add context and usage notes
4. Update .po files with new translations
"@

$template | Out-File "$outputDir\translation_template.md"

Write-Host "Extraction complete! Check $outputDir folder" -ForegroundColor Green
Write-Host "Ready to expand Klingon translation from 367 to 1000+ strings" -ForegroundColor Green
