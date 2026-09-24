# Claude Code 配置说明

本目录是我的 Claude Code 配置备份（密钥已脱敏）。

| 文件 | 说明 | 恢复到 |
|---|---|---|
| `CLAUDE.md` | 全局用户指令（身份、署名规则等） | `~/.claude/CLAUDE.md` |
| `settings.json` | 全局设置模板（env 结构、插件清单） | `~/.claude/settings.json` |
| `keybindings.json` | 键位绑定 | `~/.claude/keybindings.json` |
| `skills/` | 自定义 skill 备份 | `~/.claude/skills/` |

## 密钥的注入方式（选一种）

1. **环境变量（推荐）**：在 PowerShell profile 或系统环境变量里 `setx ANTHROPIC_AUTH_TOKEN "xxx"`，
   settings.json 中保持 `${ANTHROPIC_AUTH_TOKEN}` 占位符（Claude Code 支持读取环境变量）。
2. **settings.local.json**：放 `~/.claude/settings.local.json`，该文件默认不进 git（本仓库 `.gitignore` 已排除 `*.local.json`）。

## 常用 MCP 服务器清单（备忘）

| MCP | 用途 | 备注 |
|---|---|---|
| browser-use | 浏览器自动化 | |
| web-reader / web-search | 网页抓取与搜索 | |
| goland / webstorm | JetBrains IDE 集成 | |
| utools OCR | 图片文字/表格/公式提取 | |

<!-- MCP 服务器配置在 ~/.claude.json（含密钥，不备份到本仓库）；
     此表只记名称与用途，重装时按表重新添加。 -->
