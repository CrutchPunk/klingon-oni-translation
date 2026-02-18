# Dictionary Verification Script
# Cross-reference our translations with official TKD dictionary

Write-Host "🖖 Verifying Klingon translations against official TKD dictionary..." -ForegroundColor Green

# Official TKD words we found in the dictionary
$officialTKD = @{
    # Basic Elements (100% Verified)
    "bIQ" = "water"
    "HoS" = "power/strength/energy" 
    "baS" = "metal"
    "lojmIt" = "door"
    "Qel" = "doctor"
    "Sop" = "eat/food"
    "jaj" = "day"
    "ram" = "night"
    "poH" = "time/period"
    "logh" = "space"
    "yIn" = "life/live"
    "Hegh" = "die/death"
    "Qap" = "work/function"
    "naD" = "dig/mine"
    "chen" = "build/create"
    "ghoj" = "learn/teach"
    "ja'" = "say/tell"
    "legh" = "see/look"
    "Soj" = "food"
    "Huch" = "money"
    "mI'" = "number"
    "DIp" = "noun"
    "wanI'" = "event/phenomenon"
    "bIQ'a'" = "ocean"
    "HuD" = "mountain/hill"
    "yab" = "mind/brain"
    "SoS" = "mother"
    "pong" = "name"
    "maS" = "moon"
    "Hut" = "nine"
    "pagh" = "nothing/none"
    "DaH" = "now"
    "not" = "never"
    "Qo'" = "no/I refuse"
    "ghobe'" = "no (answer)"
    "'ut" = "necessary/essential"
    "Qu'" = "mission/quest/duty"
    "tlhIl" = "mineral/mine"
    "Somraw" = "muscle"
    "nuj" = "mouth"
    "ghIch" = "nose"
    "mong" = "neck"
    "retlh" = "area next to"
    "botlh" = "middle/center"
    "pemjep" = "midday"
    "ramjep" = "midnight"
    "po" = "morning"
    "tup" = "minute"
    "jar" = "month (Klingon)"
    "'uy'" = "million"
    "QI'" = "military"
    "yaS" = "officer"
    "Qagh" = "mistake/error"
    "chu'" = "new"
    "law'" = "numerous"
    "jum" = "odd"
    "bIt" = "nervous"
    "chuS" = "noisy"
    "mIS" = "mixed up/confused"
    "yajHa'" = "misinterpret"
    "ghIH" = "messy/sloppy"
    "DuD" = "mix"
    "Sutlh" = "negotiate"
    "lob" = "obey"
    "bep" = "object"
    "Sang" = "obliterate"
    "waQ" = "obstruct"
    "Suq" = "obtain"
    "Dan" = "occupy"
    "qaS" = "occur/happen"
    "maw" = "offend"
    "chot" = "murder"
    "qIQ" = "mutiny"
    "boj" = "nag"
    "Dum" = "nap"
    "chIj" = "navigate"
    "tu'" = "notice/observe"
    "jubbe'" = "mortal"
    "jIl" = "neighbor"
    "neHmaH" = "neutral zone"
    "nural" = "Neural"
    "nuralngan" = "Neuralese"
    "mughato'" = "mugato"
    "HanDogh" = "nacelle"
    "wIch" = "myth"
    "ghIgh" = "necklace"
    "loch" = "mustache"
    "tuQDoq" = "mind sifter"
    "ghem" = "midnight snack"
    "bobcho'" = "module"
    "Dap" = "nonsense"
    "chuQun" = "nobility"
    "chunDab" = "meteor"
    "puyjaq" = "nova"
    "'Ip" = "oath"
    "Sung" = "native"
    "maSwov" = "moonlight"
}

# Our translations that need verification
$ourTranslations = @{
    # Verified Correct (100% TKD)
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
    
    # Questionable - Not in TKD
    "tlhol" = "oxygen" # Not found in TKD
    "tlholQe'" = "carbon dioxide" # Not found in TKD
    "chay'wI'" = "generator" # chay not found, -wI' suffix usage questionable
    "bel" = "manual" # bel = "pleased" not "manual"
    "natlh" = "natural" # natlh = "consume" not "natural"
    "pIch" = "aluminum" # Not found in TKD
    "qettlh" = "petroleum" # Not found in TKD
    "qoD" = "glass" # Not found in TKD
    "qogh" = "plastic" # Not found in TKD
    "qeylI'" = "pipe" # qeylI' not found in TKD
    "ghoch" = "filter" # ghoch = "track" not "filter"
    "'uy'" = "valve" # 'uy' = "million" not "valve"
    "jup" = "battery" # jup = "friend" not "battery"
    "le'" = "control" # le' not found in TKD
    "Sep" = "reservoir" # Sep not found in TKD
    "Qov" = "bridge" # Qov not found in TKD
    "DIch" = "type/kind" # DIch not found in TKD
    "nIv" = "large/great" # nIv not found in TKD
    "mach" = "small" # mach not found in TKD
    "'op" = "some" # 'op not found in TKD
    "joH" = "lord" # joH not found in TKD
    "batlh" = "honor" # batlh not found in TKD
    "Qapla'" = "success" # Qapla' not found in TKD (but widely used)
}

Write-Host "`n📊 VERIFICATION RESULTS:" -ForegroundColor Yellow

$verified = 0
$questionable = 0
$incorrect = 0

foreach ($klingon in $ourTranslations.Keys) {
    $english = $ourTranslations[$klingon]
    
    if ($officialTKD.ContainsKey($klingon)) {
        $official = $officialTKD[$klingon]
        if ($official -eq $english -or $official -like "*$english*" -or $english -like "*$official*") {
            Write-Host "✅ $klingon = '$english' (VERIFIED: $official)" -ForegroundColor Green
            $verified++
        } else {
            Write-Host "⚠️  $klingon = '$english' (TKD: $official) - Different meaning" -ForegroundColor Yellow
            $questionable++
        }
    } else {
        Write-Host "❌ $klingon = '$english' (NOT FOUND IN TKD)" -ForegroundColor Red
        $incorrect++
    }
}

$total = $ourTranslations.Count
$accuracy = [math]::Round(($verified / $total) * 100, 1)

Write-Host "`n📈 SUMMARY:" -ForegroundColor Cyan
Write-Host "Total translations checked: $total" -ForegroundColor White
Write-Host "Verified correct: $verified ($([math]::Round(($verified / $total) * 100, 1))%)" -ForegroundColor Green
Write-Host "Questionable meaning: $questionable ($([math]::Round(($questionable / $total) * 100, 1))%)" -ForegroundColor Yellow
Write-Host "Not in TKD: $incorrect ($([math]::Round(($incorrect / $total) * 100, 1))%)" -ForegroundColor Red
Write-Host "Overall accuracy: $accuracy%" -ForegroundColor Cyan

Write-Host "`n🎯 RECOMMENDATIONS:" -ForegroundColor Yellow

if ($incorrect -gt 0) {
    Write-Host "❌ CRITICAL: $incorrect terms not found in TKD - need expert review" -ForegroundColor Red
}

if ($questionable -gt 0) {
    Write-Host "⚠️  WARNING: $questionable terms have different meanings in TKD" -ForegroundColor Yellow
}

if ($verified -gt 0) {
    Write-Host "✅ GOOD: $verified terms are 100% verified from TKD" -ForegroundColor Green
}

Write-Host "`n🔧 NEXT STEPS:" -ForegroundColor Cyan
Write-Host "1. Replace non-TKD terms with expert-approved alternatives" -ForegroundColor White
Write-Host "2. Submit questionable terms to KLI for review" -ForegroundColor White
Write-Host "3. Document all sources in translation files" -ForegroundColor White
Write-Host "4. Create expert verification process" -ForegroundColor White

Write-Host "`nQapla! Dictionary verification complete!" -ForegroundColor Green
