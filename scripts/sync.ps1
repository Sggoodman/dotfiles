# ============================================================
# sync.ps1 —— 在 Windows 上运行：把本机最新配置收集回仓库
# 用法：cd $HOME\dotfiles; powershell -ExecutionPolicy Bypass -File scripts\sync.ps1
# 运行后检查 git diff，确认无误再 commit + push
# ============================================================
$ErrorActionPreference = "Stop"
$repo = Split-Path -Parent $PSScriptRoot
Write-Host "==> 仓库位置: $repo" -ForegroundColor Cyan

# ---------- 1. PowerShell profile ----------
if (Test-Path $PROFILE) {
    Copy-Item $PROFILE (Join-Path $repo "windows\powershell\Microsoft.PowerShell_profile.ps1") -Force
    Write-Host "==> 已收集 PowerShell profile" -ForegroundColor Green
} else {
    Write-Host "!! 未找到 $PROFILE，跳过" -ForegroundColor Yellow
}

# ---------- 2. Scoop 清单 ----------
if (Get-Command scoop -ErrorAction SilentlyContinue) {
    scoop export | Out-File -Encoding utf8 (Join-Path $repo "windows\scoop\scoop.txt")
    Write-Host "==> 已导出 scoop 清单" -ForegroundColor Green
}

# ---------- 3. Winget 清单 ----------
if (Get-Command winget -ErrorAction SilentlyContinue) {
    winget export -o (Join-Path $repo "windows\winget\winget.json") --accept-source-agreements | Out-Null
    Write-Host "==> 已导出 winget 清单" -ForegroundColor Green
}

# ---------- 4. Windows Terminal ----------
$terminalLocal = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
if (Test-Path $terminalLocal) {
    Copy-Item $terminalLocal (Join-Path $repo "windows\terminal\settings.json") -Force
    Write-Host "==> 已收集 Windows Terminal 配置" -ForegroundColor Green
}

# ---------- 5. 提交 ----------
Write-Host "`n==> 变更概览：" -ForegroundColor Cyan
git -C $repo status --short
Write-Host @"

确认无误后提交：
    git add -A ; git commit -m "sync: $(Get-Date -Format 'yyyy-MM-dd') 配置同步" ; git push
"@ -ForegroundColor Magenta
