# Go 每日一库 · 完整清单

> 来源：[darjun/go-daily-lib](https://github.com/darjun/go-daily-lib)（"Go 每日一库"系列官方合集，与 Go 语言中文网/公众号连载同步）。
> 微信公众号无公开接口、无法直接爬取历史文章，此仓库即系列全部条目，**同步上游即可保持最新**。
> "讲解"列为作者博客（darjun.github.io，国内网络可能需要代理）；库名带 ★ 为 Go 标准库。

## 命令行与 CLI

| 库 | 说明 | 讲解 |
|---|---|---|
| flag ★ | 标准库命令行选项解析，简单实用 | [链接](https://darjun.github.io/2020/01/10/godailylib/flag/) |
| go-flags | 第三方命令行选项解析库，非常强大 | [链接](https://darjun.github.io/2020/01/10/godailylib/go-flags/) |
| cobra | 编写命令行程序的库，带脚手架生成代码 | [链接](https://darjun.github.io/2020/01/17/godailylib/cobra/) |
| cli（urfave） | 命令行程序库，方便编写命令行程序 | [链接](https://darjun.github.io/2020/06/22/godailylib/cli) |
| jj | 操作 JSON 数据的命令行程序 | [链接](https://darjun.github.io/2020/03/25/godailylib/jj) |

## 配置与类型转换

| 库 | 说明 | 讲解 |
|---|---|---|
| viper | 灵活强大的配置管理，支持 JSON/TOML/YAML 等与热更新 | [链接](https://darjun.github.io/2020/01/18/godailylib/viper/) |
| go-ini | 解析 INI 配置文件 | [链接](https://darjun.github.io/2020/01/15/godailylib/go-ini/) |
| godotenv | 读取 .env 文件设置环境变量，支持 dev/prod 模式 | [链接](https://darjun.github.io/2020/02/12/godailylib/godotenv/) |
| mapstructure | 结构体和 map 互转 | [链接](https://darjun.github.io/2020/07/29/godailylib/mapstructure) |
| cast | 方便实用的类型转换库 | [链接](https://darjun.github.io/2020/01/20/godailylib/cast/) |

## 日志

| 库 | 说明 | 讲解 |
|---|---|---|
| log ★ | 标准日志库 | [链接](https://darjun.github.io/2020/02/07/godailylib/log/) |
| logrus | 使用非常广泛的开源日志库 | [链接](https://darjun.github.io/2020/02/07/godailylib/logrus/) |
| zap | Uber 出品的高性能日志库 | [链接](https://darjun.github.io/2020/04/23/godailylib/zap) |
| zerolog | 高性能日志库，专注 JSON 格式，号称 0 内存分配 | [链接](https://darjun.github.io/2020/04/24/godailylib/zerolog) |

## JSON 与数据操作

| 库 | 说明 | 讲解 |
|---|---|---|
| gjson | 专注于读取 JSON 值的库 | [链接](https://darjun.github.io/2020/03/22/godailylib/gjson) |
| sjson | 专注于设置 JSON 值的库 | [链接](https://darjun.github.io/2020/03/24/godailylib/sjson) |
| gojsonq | Go 操作 JSON 数据，支持花式操作方法 | [链接](https://darjun.github.io/2020/02/24/godailylib/gojsonq) |
| gabs | JSON 操作库 | [链接](https://darjun.github.io/2020/09/03/godailylib/gabs) |

## 结构体 / 反射 / 代码生成

| 库 | 说明 | 讲解 |
|---|---|---|
| mergo | 合并结构体和 map | [链接](https://darjun.github.io/2020/03/11/godailylib/mergo) |
| copier | 相同或不同结构体/map 之间的赋值 | [链接](https://darjun.github.io/2020/03/13/godailylib/copier) |
| jennifer | Go 代码生成库 | [链接](https://darjun.github.io/2020/03/14/godailylib/jennifer) |
| reflect ★ | 反射标准库详解 | [链接](https://darjun.github.io/2021/05/27/godailylib/reflect) |

## 依赖注入

| 库 | 说明 | 讲解 |
|---|---|---|
| dig | Uber 出品的依赖注入库 | [链接](https://darjun.github.io/2020/02/22/godailylib/dig) |
| wire | Google 出品，编译前生成代码，无需反射 | [链接](https://darjun.github.io/2020/03/02/godailylib/wire) |

## 消息与异步

| 库 | 说明 | 讲解 |
|---|---|---|
| message-bus | 异步消息通信库 | [链接](https://darjun.github.io/2020/02/26/godailylib/message-bus) |
| watermill | 功能丰富的消息通信库 | [链接](https://darjun.github.io/2020/03/01/godailylib/watermill) |
| rxgo | 基于 pipelines 的异步编程库 | [链接](https://darjun.github.io/2020/10/11/godailylib/rxgo) |
| gotalk | 专注于进程间通信的库 | [链接](https://darjun.github.io/2021/05/20/godailylib/gotalk/) |

## 数据库与存储

| 库 | 说明 | 讲解 |
|---|---|---|
| sqlc | 根据 SQL 语句生成操作数据库的 Go 代码 | [链接](https://darjun.github.io/2020/04/28/godailylib/sqlc) |
| xorm | ORM 库 | [链接](https://darjun.github.io/2020/05/07/godailylib/xorm) |
| buntdb | 内存键值库，支持 JSON 操作和事务 | [链接](https://darjun.github.io/2020/03/21/godailylib/buntdb) |
| nutsdb | 国人开发的内存键值库，支持备份还原 | [链接](https://darjun.github.io/2020/04/25/godailylib/nutsdb) |

## RPC

| 库 | 说明 | 讲解 |
|---|---|---|
| rpc ★ | 标准 RPC 库 | [链接](https://darjun.github.io/2020/05/08/godailylib/rpc) |
| jsonrpc | 标准 JSON-RPC 库 | [链接](https://darjun.github.io/2020/05/10/godailylib/jsonrpc) |
| rpcx | 基于标准库扩展的高性能 RPC 框架 | [链接](https://darjun.github.io/2020/05/21/godailylib/rpcx) |
| twirp | twitchtv 出品，基于 Protobuf 的 RPC 库 | [链接](https://darjun.github.io/2020/06/07/godailylib/twirp) |

## Web 与 HTTP

| 库 | 说明 | 讲解 |
|---|---|---|
| net/http ★ | 标准库基础与中间件 | [链接](https://darjun.github.io/2021/07/13/in-post/godailylib/nethttp/) |
| gorilla/mux | gorilla Web 开发包之路由库 | [链接](https://darjun.github.io/2021/07/19/godailylib/gorilla/mux) |
| gorilla/handlers | gorilla 之中间件库 | [链接](https://darjun.github.io/2021/07/21/godailylib/gorilla/handlers) |
| gorilla/schema | gorilla 之表单处理库 | [链接](https://darjun.github.io/2021/07/22/godailylib/gorilla/schema) |
| gorilla/securecookie | gorilla 之安全 cookie 库 | [链接](https://darjun.github.io/2021/07/23/godailylib/gorilla/securecookie/) |
| gorilla/sessions | gorilla 之 session 处理库 | [链接](https://darjun.github.io/2021/07/25/godailylib/gorilla/sessions) |
| goth | 第三方登录认证合集 | [链接](https://darjun.github.io/2021/07/26/godailylib/goth) |
| negroni | Go 中间件库 | [链接](https://darjun.github.io/2020/06/19/godailylib/negroni) |
| resty | HTTP client | [链接](https://darjun.github.io/2021/06/26/godailylib/resty) |
| gentleman | HTTP 客户端 | [链接](https://darjun.github.io/2020/04/07/godailylib/gentleman) |
| quicktemplate | 预编译为 Go 代码的模板库 | [链接](https://darjun.github.io/2020/09/26/godailylib/quicktemplate) |
| fasttemplate | 小型模板库，可替换 strings.Replace | [链接](https://darjun.github.io/2021/05/24/godailylib/fasttemplate) |
| go-app | Go + WebAssembly 编写应用 | [链接](https://darjun.github.io/2020/04/22/godailylib/go-app) |

## 校验 / 比较 / 表达式

| 库 | 说明 | 讲解 |
|---|---|---|
| validator | 使用最广泛的数据校验库 | [链接](https://darjun.github.io/2020/04/04/godailylib/validator) |
| ozzo-validation | 数据校验库 | [链接](https://darjun.github.io/2021/06/20/godailylib/ozzo-validation) |
| go-cmp | Google 出品的比较库，常用于测试 | [链接](https://darjun.github.io/2020/03/20/godailylib/go-cmp) |
| commonregex | 常用正则表达式合集 | [链接](https://darjun.github.io/2020/09/05/godailylib/commonregex) |
| govaluate | 计算动态 Go 表达式 | [链接](https://darjun.github.io/2020/04/01/godailylib/govaluate) |

## 定时任务

| 库 | 说明 | 讲解 |
|---|---|---|
| cron | 定时任务管理，对标 crontab | [链接](https://darjun.github.io/2020/06/25/godailylib/cron) |
| gron | 定时任务管理库 | [链接](https://darjun.github.io/2020/04/20/godailylib/gron) |
| jobrunner | 基于 cron 的定时任务管理库 | [链接](https://darjun.github.io/2020/09/01/godailylib/jobrunner) |

## 并发与性能

| 库 | 说明 | 讲解 |
|---|---|---|
| ants | goroutine 池 | [链接](https://darjun.github.io/2021/06/03/godailylib/ants) |
| tunny | 另一个 goroutine 池实现 | [链接](https://darjun.github.io/2021/06/10/godailylib/tunny) |
| bytebufferpool | 基于 sync.Pool 的高性能对象缓冲池 | [链接](https://darjun.github.io/2021/05/08/godailylib/bytebufferpool) |
| bitset | 位集合操作库 | [链接](https://darjun.github.io/2022/07/16/godailylib/bitset/) |
| roaring | 压缩位图 | [链接](https://darjun.github.io/2022/07/17/godailylib/roaring/) |

## 爬虫与 HTML

| 库 | 说明 | 讲解 |
|---|---|---|
| goquery | Go 的 jQuery | [链接](https://darjun.github.io/2020/10/11/godailylib/goquery) |
| colly | Go 语言爬虫框架 | [链接](https://darjun.github.io/2021/06/30/godailylib/colly/) |

## 测试

| 库 | 说明 | 讲解 |
|---|---|---|
| testing ★ | 标准库测试包 | [链接](https://darjun.github.io/2021/08/03/godailylib/testing) |
| testify | Go 最流行的测试库 | [链接](https://darjun.github.io/2021/08/11/godailylib/testify) |

## 日期时间

| 库 | 说明 | 讲解 |
|---|---|---|
| carbon | 功能强大的日期时间库，仿 PHP 同名库 | [链接](https://darjun.github.io/2020/02/14/godailylib/carbon/) |
| dateparse | 日期时间字符串解析 | [链接](https://darjun.github.io/2021/06/24/godailylib/dateparse) |

## 系统与文件

| 库 | 说明 | 讲解 |
|---|---|---|
| fsnotify | 监控文件或目录改动 | [链接](https://darjun.github.io/2020/01/19/godailylib/fsnotify/) |
| gopsutil | 获取各种系统信息 | [链接](https://darjun.github.io/2020/04/05/godailylib/gopsutil) |
| os/exec ★ | 执行外部命令 | [链接](https://darjun.github.io/2022/11/01/godailylib/osexec/) |
| go-homedir | 不用 cgo 获取用户主目录，支持交叉编译 | [链接](https://darjun.github.io/2020/01/14/godailylib/go-homedir/) |

## GUI / 游戏 / 绘图 / TUI

| 库 | 说明 | 讲解 |
|---|---|---|
| fyne | Go GUI 框架 | [链接](https://darjun.github.io/2020/06/15/godailylib/fyne) |
| ebiten | 2D 游戏引擎（上/中/下三篇） | [上](https://darjun.github.io/2022/11/15/godailylib/ebiten1/) [中](https://darjun.github.io/2022/11/18/godailylib/ebiten2/) [下](https://darjun.github.io/2022/11/23/godailylib/ebiten2/) |
| plot | 绘图库 | [链接](https://darjun.github.io/2020/04/12/godailylib/plot) |
| bubbletea | TUI 程序框架 | [链接](https://darjun.github.io/2021/06/11/godailylib/bubbletea) |
| termtables | 控制台输出表格 | [链接](https://darjun.github.io/2021/06/29/godailylib/termtables/) |

## 效率工具与其他

| 库 | 说明 | 讲解 |
|---|---|---|
| air | 监听文件修改自动编译重启，提升开发效率 | [链接](https://darjun.github.io/2020/09/27/godailylib/air/) |
| email | 发送邮件的第三方库 | [链接](https://darjun.github.io/2020/02/16/godailylib/email) |

---

**同步上游**：上游仓库更新后，重新对照 [darjun/go-daily-lib](https://github.com/darjun/go-daily-lib) 的 README 增补即可。
