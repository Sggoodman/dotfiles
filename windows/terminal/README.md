# Windows Terminal 配置

配置文件路径（Store 版）：

```
%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

## 导出（同步到本仓库）

在本仓库根目录运行 `scripts\sync.ps1`，或手动：

```powershell
Copy-Item "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" .\windows\terminal\settings.json
```

## 恢复（新机器）

```powershell
Copy-Item .\windows\terminal\settings.json "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
```

## 常用自定义项备忘

- 配色方案：One Half Dark / Campbell / 自定义
- 字体：`profiles.defaults.font.face` → Nerd Font 名称
- 启动目录：`profiles.defaults.startingDirectory` → `%USERPROFILE%`
- 复制行为：`copyOnSelect`: true（选中即复制）
