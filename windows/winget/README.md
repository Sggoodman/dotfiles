# Winget 软件清单

winget 是 Windows 官方包管理器，适合装常规软件（Git、VS Code、浏览器等）。

## 导出 / 恢复

```powershell
# 导出本机清单（sync.ps1 会自动做）
winget export -o .\windows\winget\winget.json --accept-source-agreements

# 新机器恢复（bootstrap.ps1 会自动做）
winget import -i .\windows\winget\winget.json --accept-package-agreements --accept-source-agreements
```

## 常用命令

```powershell
winget search <name>
winget install <name>
winget upgrade --all      # 全部升级
winget list               # 列出已装
```
