param(
    [Parameter(Mandatory=$true)]
    [string]$coverageFile,

    [Parameter(Mandatory=$true)]
    [string]$outputFile
)

[XML]$coverage = Get-Content $coverageFile
$coverageSummary = '# Code Coverage Summary' + "`n"
$coverageSummary += '- Line Rate: ' + $coverage.coverage.'line-rate' + "`n"
$coverageSummary += '- Branch Rate: ' + $coverage.coverage.'branch-rate' + "`n"
$coverageSummary += '- Lines Covered: ' + $coverage.coverage.'lines-covered' + "`n"
$coverageSummary += '- Lines Valid: ' + $coverage.coverage.'lines-valid' + "`n"
$coverageSummary += '- Branches Covered: ' + $coverage.coverage.'branches-covered' + "`n"
$coverageSummary += '- Branches Valid: ' + $coverage.coverage.'branches-valid' + "`n"
Set-Content -Path $outputFile -Value $coverageSummary
