# ============================================================
# bootstrap.ps1 —— 新 Windows 机器一键恢复环境
# 用法：powershell -ExecutionPolicy Bypass -File scripts\bootstrap.ps1
# 仓库根目录：$HOME\dotfiles
# ============================================================
$ErrorActionPreference = "Stop"
$repo = Split-Path -Parent $PSScriptRoot
Write-Host "==> 仓库位置: $repo" -ForegroundColor Cyan

# ---------- 1. Scoop ----------
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "==> 安装 scoop..." -ForegroundColor Cyan
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    irm get.scoop.sh | iex
} else {
    Write-Host "==> scoop 已安装" -ForegroundColor Green
}

# ---------- 2. 按清单恢复软件 ----------
$scoopList = Join-Path $repo "windows\scoop\scoop.txt"
if (Test-Path $scoopList) {
    Write-Host "==> scoop import（按清单恢复软件）..." -ForegroundColor Cyan
    scoop import $scoopList
}

$wingetList = Join-Path $repo "windows\winget\winget.json"
if (Get-Command winget -ErrorAction SilentlyContinue) {
    if (Test-Path $wingetList) {
        Write-Host "==> winget import..." -ForegroundColor Cyan
        winget import -i $wingetList --accept-package-agreements --accept-source-agreements
    }
} else {
    Write-Host "!! winget 不可用（需 Win10 1709+ 且装 App Installer），跳过" -ForegroundColor Yellow
}

# ---------- 3. PowerShell 模块 ----------
Write-Host "==> 安装 PowerShell 模块..." -ForegroundColor Cyan
foreach ($m in @("posh-git", "Terminal-Icons")) {
    if (-not (Get-Module -ListAvailable -Name $m)) {
        Install-Module $m -Scope CurrentUser -Force
    }
}
if (-not (Get-Command zoxide -ErrorAction SilentlyContinue)) { winget install ajeetdsouza.zoxide --accept-package-agreements --accept-source-agreements }
if (-not (Get-Command oh-my-posh -ErrorAction SilentlyContinue)) { winget install JanDeDobbeleer.OhMyPosh -s winget --accept-package-agreements --accept-source-agreements }

# ---------- 4. 部署 PowerShell profile ----------
$profileSource = Join-Path $repo "windows\powershell\Microsoft.PowerShell_profile.ps1"
$profileDir = Split-Path -Parent $PROFILE
if (-not (Test-Path $profileDir)) { New-Item -ItemType Directory -Path $profileDir -Force | Out-Null }
if (Test-Path $PROFILE) {
    Copy-Item $PROFILE "$PROFILE.bak.$(Get-Date -Format 'yyyyMMddHHmmss')" -Force
    Write-Host "==> 已备份原 profile 为 .bak.* " -ForegroundColor Yellow
}
Copy-Item $profileSource $PROFILE -Force
Write-Host "==> PowerShell profile 已部署到 $PROFILE" -ForegroundColor Green

# ---------- 5. Windows Terminal ----------
$terminalLocal = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$terminalSource = Join-Path $repo "windows\terminal\settings.json"
if ((Test-Path $terminalSource) -and (Test-Path (Split-Path -Parent $terminalLocal))) {
    Copy-Item $terminalSource $terminalLocal -Force
    Write-Host "==> Windows Terminal 配置已恢复" -ForegroundColor Green
}

Write-Host @"

==> 完成！别忘了：
    1. 安装 Nerd Font 字体：oh-my-posh font install
    2. Windows Terminal 设置里把字体改为 Nerd Font
    3. 重新打开终端生效
"@ -ForegroundColor Magenta
