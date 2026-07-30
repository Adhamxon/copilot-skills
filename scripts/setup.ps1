# GitHub Copilot Skills Setup Script (Windows PowerShell)
# Run this script from the repository root to copy files to your project

param(
    [string]$TargetPath = (Get-Location).Path
)

Write-Host "GitHub Copilot Skills Setup" -ForegroundColor Cyan
Write-Host "===========================" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will copy Copilot instructions and agents to your project."
Write-Host ""

$sourceRoot = Split-Path -Parent $PSScriptRoot
$targetGitHub = Join-Path $TargetPath ".github"

# Create .github directory
if (-not (Test-Path $targetGitHub)) {
    New-Item -ItemType Directory -Path $targetGitHub -Force | Out-Null
    Write-Host "  [CREATE] $targetGitHub" -ForegroundColor Green
}

# Copy copilot-instructions.md
$instructionsSource = Join-Path $sourceRoot ".github\copilot-instructions.md"
$instructionsTarget = Join-Path $targetGitHub "copilot-instructions.md"
if (Test-Path $instructionsSource) {
    Copy-Item $instructionsSource $instructionsTarget -Force
    Write-Host "  [COPY]   copilot-instructions.md -> $instructionsTarget" -ForegroundColor Green
} else {
    Write-Host "  [MISS]   copilot-instructions.md not found at $instructionsSource" -ForegroundColor Yellow
}

# Create agents directory
$targetAgents = Join-Path $targetGitHub "agents"
if (-not (Test-Path $targetAgents)) {
    New-Item -ItemType Directory -Path $targetAgents -Force | Out-Null
    Write-Host "  [CREATE] $targetAgents" -ForegroundColor Green
}

# Copy agent files
$agentsSource = Join-Path $sourceRoot ".github\agents"
if (Test-Path $agentsSource) {
    Get-ChildItem -Path $agentsSource -Filter "*.agent.md" | ForEach-Object {
        $destFile = Join-Path $targetAgents $_.Name
        Copy-Item $_.FullName $destFile -Force
        Write-Host "  [COPY]   $($_.Name) -> $destFile" -ForegroundColor Green
    }
} else {
    Write-Host "  [MISS]   Agents directory not found at $agentsSource" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Setup complete!" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. Review the copied files in $targetGitHub"
Write-Host "  2. Commit and push: git add .github/ && git commit -m 'feat: add Copilot instructions' && git push"
Write-Host ""
Write-Host "For more details, see docs/GETTING_STARTED.md" -ForegroundColor Gray
