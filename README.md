# 石添瑞 · 个人配置仓库

> Go 后端工程师 | 数据中台 & LLM 应用开发 | Windows + macOS 双持

这是我的个人配置与工具知识库：换机/重装时**一键恢复环境**，平时作为**工具与库的备忘清单**。
个人主页见 [Sggoodman/Sggoodman](https://github.com/Sggoodman/Sggoodman)。

## 📁 目录导航

| 目录 | 内容 | 何时看它 |
|---|---|---|
| [windows/](windows/) | PowerShell profile、Windows Terminal、scoop/winget 软件清单 | 重装系统 / 换新电脑 |
| [software/](software/) | 绿色软件清单（名称 + 用途 + 官网链接） | 找某个工具的下载地址 |
| [go/](go/) | Go 库收藏（按场景分类）+ 代码片段 | 选型时想不起"那个库叫什么" |
| [claude/](claude/) | Claude Code 配置（CLAUDE.md、settings、keybindings、skills） | 新机器配置 Claude Code |
| [profile/](profile/) | 个人介绍、简历 | — |
| [scripts/](scripts/) | bootstrap.ps1（一键恢复）/ sync.ps1（收集本机配置回仓库） | 环境同步 |
| [docs/](docs/) | 零散笔记：regex、SQL、git 技巧等 | 查备忘 |

## 🚀 新机器快速恢复（Windows）

```powershell
git clone https://github.com/Sggoodman/dotfiles.git $HOME\dotfiles
cd $HOME\dotfiles
powershell -ExecutionPolicy Bypass -File scripts\bootstrap.ps1
```

日常改了配置后，在 Windows 上运行 `scripts\sync.ps1` 把本机最新配置收集回仓库再提交。

## 🔐 安全说明

- 本仓库所有密钥均以 `${ENV_VAR}` 占位符表示，**绝不提交真实密钥**。
- Claude Code 的真实 token 放在系统环境变量或本机 `settings.local.json`（已被 `.gitignore` 排除）中。

## 📄 许可

[MIT](LICENSE) © 石添瑞
