# PowerShell 模块清单

重装后一键安装（PowerShell 7+）：

```powershell
Install-Module posh-git -Scope CurrentUser -Force
Install-Module Terminal-Icons -Scope CurrentUser -Force
Install-Module z -Scope CurrentUser -Force   # 若用 zoxide 则不需要
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install ajeetdsouza.zoxide
```

| 模块 | 用途 | 备注 |
|---|---|---|
| [oh-my-posh](https://ohmyposh.dev/) | 提示符美化（git 状态、耗时、主题） | 需装 [Nerd Font](https://www.nerdfonts.com/) 字体并在 Terminal 里设置 |
| [posh-git](https://github.com/dahlbyk/posh-git) | 提示符显示 git 分支/状态 | |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | 智能跳转目录，`z 片段` 直达 | 比原版 `z` 快，优先用它 |
| [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) | `ls` 显示文件类型图标 | 依赖 Nerd Font |
| [PSReadLine](https://github.com/PowerShell/PSReadLine)（内置） | 历史补全、语法高亮 | profile 中已调优 |

## 字体

oh-my-posh / Terminal-Icons 需要 Nerd Font：`oh-my-posh font install` 或手动下载
MesloLGS NF / JetBrainsMono NF，并在 Windows Terminal 设置中选为字体。
