# Scoop 软件清单

[scoop](https://scoop.sh/) 是 Windows 的命令行包管理器，最适合管理绿色/便携软件——
安装的东西全在 `~\scoop`，不写注册表，备份迁移方便。

## 新机器安装 scoop

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

## 导出 / 恢复

```powershell
# 导出本机清单（sync.ps1 会自动做）
scoop export > .\windows\scoop\scoop.txt

# 新机器恢复
scoop import .\windows\scoop\scoop.txt
```

## 常用命令

```powershell
scoop search <name>     # 搜索
scoop install <name>    # 安装
scoop update *          # 全部更新
scoop list              # 列出已装
```
