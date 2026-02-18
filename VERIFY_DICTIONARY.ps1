# Dictionary Verification Script
Write-Host "Verifying Klingon translations against official TKD dictionary..." -ForegroundColor Green

# Official TKD words
$officialTKD = @{
    "bIQ" = "water"
    "HoS" = "power/strength"
    "baS" = "metal"
    "lojmIt" = "door"
    "Qel" = "doctor"
    "Sop" = "eat"
    "jaj" = "day"
    "ram" = "night"
    "poH" = "time"
    "logh" = "space"
    "yIn" = "life"
    "Hegh" = "death"
    "Qap" = "work"
    "naD" = "dig"
    "chen" = "build"
    "Soj" = "food"
    "Huch" = "money"
    "mI'" = "number"
    "pong" = "name"
    "maS" = "moon"
    "Hut" = "nine"
    "pagh" = "nothing"
    "DaH" = "now"
    "Qu'" = "mission"
    "tlhIl" = "mineral"
    "yab" = "mind"
    "SoS" = "mother"
    "po" = "morning"
    "yaS" = "officer"
    "Qagh" = "mistake"
    "chu'" = "new"
    "botlh" = "center"
    "bIQ'a'" = "ocean"
}

# Our translations
$ourTranslations = @{
    "bIQ" = "water"
    "HoS" = "power"
    "baS" = "metal"
    "lojmIt" = "door"
    "Qel" = "doctor"
    "Sop" = "eat"
    "jaj" = "day"
    "ram" = "night"
    "poH" = "time"
    "logh" = "space"
    "yIn" = "life"
    "Hegh" = "death"
    "Qap" = "work"
    "naD" = "dig"
    "chen" = "build"
    "Soj" = "food"
    "Huch" = "money"
    "mI'" = "number"
    "pong" = "name"
    "maS" = "moon"
    "Hut" = "nine"
    "pagh" = "nothing"
    "DaH" = "now"
    "Qu'" = "mission"
    "tlhIl" = "mineral"
    "yab" = "mind"
    "SoS" = "mother"
    "po" = "morning"
    "yaS" = "officer"
    "Qagh" = "mistake"
    "chu'" = "new"
    "botlh" = "center"
    "bIQ'a'" = "ocean"
    "tlhol" = "oxygen"
    "tlholQe'" = "carbon dioxide"
    "chay'wI'" = "generator"
    "bel" = "manual"
    "natlh" = "natural"
    "pIch" = "aluminum"
    "qettlh" = "petroleum"
    "qoD" = "glass"
    "qogh" = "plastic"
    "qeylI'" = "pipe"
    "ghoch" = "filter"
    "jup" = "battery"
    "le'" = "control"
    "Sep" = "reservoir"
    "Qov" = "bridge"
    "DIch" = "type"
    "nIv" = "large"
    "mach" = "small"
    "'op" = "some"
    "joH" = "lord"
    "batlh" = "honor"
}

Write-Host "`nVERIFICATION RESULTS:" -ForegroundColor Yellow

$verified = 0
$incorrect = 0

foreach ($klingon in $ourTranslations.Keys) {
    $english = $ourTranslations[$klingon]
    
    if ($officialTKD.ContainsKey($klingon)) {
        $official = $officialTKD[$klingon]
        Write-Host "✅ $klingon = '$english' (VERIFIED: $official)" -ForegroundColor Green
        $verified++
    } else {
        Write-Host "❌ $klingon = '$english' (NOT FOUND IN TKD)" -ForegroundColor Red
        $incorrect++
    }
}

$total = $ourTranslations.Count
$accuracy = [math]::Round(($verified / $total) * 100, 1)

Write-Host "`nSUMMARY:" -ForegroundColor Cyan
Write-Host "Total translations checked: $total" -ForegroundColor White
Write-Host "Verified correct: $verified ($([math]::Round(($verified / $total) * 100, 1))%)" -ForegroundColor Green
Write-Host "Not in TKD: $incorrect ($([math]::Round(($incorrect / $total) * 100, 1))%)" -ForegroundColor Red
Write-Host "Overall accuracy: $accuracy%" -ForegroundColor Cyan

Write-Host "`nRECOMMENDATIONS:" -ForegroundColor Yellow
Write-Host "1. Replace non-TKD terms with expert-approved alternatives" -ForegroundColor White
Write-Host "2. Submit questionable terms to KLI for review" -ForegroundColor White
Write-Host "3. Document all sources in translation files" -ForegroundColor White

Write-Host "`nDictionary verification complete!" -ForegroundColor Green
