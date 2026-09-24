# ============================================================
# PowerShell Profile - 石添瑞
# 位置：$PROFILE （通常为 Documents\PowerShell\Microsoft.PowerShell_profile.ps1）
# 同步方式：在仓库根目录运行 scripts\sync.ps1 可收集本机最新版回仓库
# ============================================================

# ---------- 模块初始化（需先安装，见 MODULES.md） ----------
# 提示符美化
if (Get-Module -ListAvailable -Name oh-my-posh) {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
}
# git 分支状态提示
if (Get-Module -ListAvailable -Name posh-git) { Import-Module posh-git }
# 智能 cd（输入 z 目录名片段即可跳转）
if (Get-Module -ListAvailable -Name zoxide) { Invoke-Expression (& { (zoxide init pwsh --cmd cd | Out-String) }) }
# ls 图标（需 Nerd Font 字体）
if (Get-Module -ListAvailable -Name Terminal-Icons) { Import-Module Terminal-Icons }

# ---------- PSReadLine：历史命令补全 ----------
if ($host.Name -eq 'ConsoleHost') {
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete      # Tab 补全菜单
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward   # ↑ 按前缀搜历史
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin       # 灰色预测建议
    Set-PSReadLineOption -PredictionViewStyle ListView
}

# ---------- 常用别名 ----------
Set-Alias -Name ll -Value Get-ChildItem
Set-Alias -Name g -Value git
Set-Alias -Name which -Value Get-Command

# ---------- 实用函数 ----------
# 新建目录并进入
function mkcd($path) { New-Item -ItemType Directory -Path $path -Force | Out-Null; Set-Location $path }

# 向上跳 n 级目录：up 2
function up($n = 1) { $p = Get-Location; for ($i = 0; $i -lt $n; $i++) { $p = $p.Parent }; Set-Location $p }

# 解压到同名目录
function unzip($file) { Expand-Archive -Path $file -DestinationPath ($file -replace '\.zip$', '') -Force }

# 快速编辑本 profile
function Edit-Profile { notepad $PROFILE }
