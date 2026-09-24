# Go 库收藏

> 按"什么场景用"分类。每条一句话说明为什么值得用。
> 三个月后你只记得场景，不记得库名——所以先找场景，再拿库。

## 并发与生命周期

| 库 | 场景 |
|---|---|
| [`golang.org/x/sync/errgroup`](https://pkg.go.dev/golang.org/x/sync/errgroup) | 一组 goroutine 里任何一个出错就整体取消，比手动 channel + WaitGroup 干净得多 |
| [`golang.org/x/sync/singleflight`](https://pkg.go.dev/golang.org/x/sync/singleflight) | 合并并发相同请求（缓存击穿救星）：100 个请求同时查同一个 key，只放 1 个去打 DB |
| [`golang.org/x/sync/semaphore`](https://pkg.go.dev/golang.org/x/sync/semaphore) | 带权重的信号量，比 channel 缓冲更语义化 |
| [`panjf2000/ants`](https://github.com/alibaba/ants)（阿里） | 协程池，海量短任务防 goroutine 爆炸 |
| [`sourcegraph/conc`](https://github.com/sourcegraph/conc) | 让并发代码更难写错（结构化并发，panic 自动传播） |
| [`cenkalti/backoff`](https://github.com/cenkalti/backoff) | 指数退避重试，带抖动（jitter），比手写 sleep 靠谱 |
| [`avast/retry-go`](https://github.com/avast/retry-go) | 重试库：链式 API 优雅，支持 context 取消与每次重试回调 |
| [`sethvargo/go-retry`](https://github.com/sethvargo/go-retry) | 另一重试库：backoff 策略可自由组合（指数/固定/抖动），与上者二选一 |

## Web 框架与路由

| 库 | 场景 |
|---|---|
| [`gin-gonic/gin`](https://github.com/gin-gonic/gin) | 最主流，生态最全，默认选择 |
| [`go-chi/chi`](https://github.com/go-chi/chi) | 想要"接近标准库"的轻量路由，中间件写法舒服 |
| [`cloudwego/hertz`](https://github.com/cloudwego/hertz)（字节） | 极致性能的 HTTP 框架，微服务高 QPS 场景 |
| [`grpc/grpc-go`](https://github.com/grpc/grpc-go) | gRPC 标配 |
| [`swaggo/swag`](https://github.com/swaggo/swag) | 注释生成 OpenAPI 文档 |
| [`labstack/echo`](https://github.com/labstack/echo) | 极简高性能 Web 框架，REST 服务的另一主流选择 |
| [`kataras/iris`](https://github.com/kataras/iris) | 主打极致性能的 Web 框架，Express 风格路由 |
| [`gorilla/schema`](https://github.com/gorilla/schema) | form / query ↔ struct 双向转换，解析请求参数不用手写绑定 |
| [`fvbock/endless`](https://github.com/fvbock/endless) | HTTP 服务零停机重启（graceful restart），平滑换二进制 |

## 配置 / 日志 / 观测

| 库 | 场景 |
|---|---|
| [`spf13/viper`](https://github.com/spf13/viper) | 配置读取全家桶（文件/env/flag/远程），大项目用 |
| [`caarlos0/env`](https://github.com/caarlos0/env) | 只要读环境变量时，比 viper 轻十倍 |
| [`joho/godotenv`](https://github.com/joho/godotenv) | 把 .env 文件读入环境变量，本地开发密钥管理最小方案 |
| [`mitchellh/mapstructure`](https://github.com/mitchellh/mapstructure) | map[string]interface{} → struct，配置解析必备（原仓库已归档，新项目用 [go-viper/mapstructure/v2](https://github.com/go-viper/mapstructure)） |
| [`logrus/logrus`](https://github.com/sirupsen/logrus) | 结构化日志老牌（新项目建议直接用标准库 slog） |
| [`log/slog`](https://pkg.go.dev/log/slog)（标准库） | Go 1.21+ 官方结构化日志，新项目首选，零依赖 |
| [`uber-go/zap`](https://github.com/uber-go/zap) | 高性能日志，热路径打日志多时用 |
| [`prometheus/client_golang`](https://github.com/prometheus/client_golang) | 暴露 Prometheus 指标 |

## 数据库与存储

| 库 | 场景 |
|---|---|
| [`jmoiron/sqlx`](https://github.com/jmoiron/sqlx) | database/sql 增强（结构体扫描），保留手写 SQL 的掌控感 |
| [`gorm.io/gorm`](https://github.com/go-gorm/gorm) | 最流行 ORM；复杂查询记得看生成的 SQL |
| [`uptrace/bun`](https://github.com/uptrace/bun) | 比 GORM 更"SQL 味"的 ORM |
| [`redis/go-redis`](https://github.com/redis/go-redis) | Redis 官方推荐客户端 |
| [`pressly/goose`](https://github.com/pressly/goose) | SQL 文件形式的数据库迁移，版本管理清晰 |
| [`allegro/bigcache`](https://github.com/allegro/bigcache) | 进程内大容量缓存，GC 友好 |
| [`elastic/go-elasticsearch`](https://github.com/elastic/go-elasticsearch) | Elasticsearch 官方 Go 客户端 |

## JSON / 序列化

| 库 | 场景 |
|---|---|
| [`bytedance/sonic`](https://github.com/bytedance/sonic)（字节） | 极速 JSON 序列化，API 兼容标准库，热路径直接换 |
| [`tidwall/gjson`](https://github.com/tidwall/gjson) | 用路径表达式（`a.b.0.c`）从大 JSON 里掏一个字段，不用定义结构体 |
| [`mailru/easyjson`](https://github.com/mailru/easyjson) | 代码生成式 JSON，生成器场景 |

## CLI 与 TUI

| 库 | 场景 |
|---|---|
| [`spf13/cobra`](https://github.com/spf13/cobra) | 命令行框架事实标准（kubectl 同款），子命令/补全/帮助全自动 |
| [`charmbracelet/bubbletea`](https://github.com/charmbracelet/bubbletea) | 写 TUI 终端交互程序（TUI 版 React） |
| [`charmbracelet/lipgloss`](https://github.com/charmbracelet/lipgloss) | 终端样式排版，配合 bubbletea |
| [`pterm/pterm`](https://github.com/pterm/pterm) | 快速给 CLI 加进度条、表格、彩色输出 |
| [`fatih/color`](https://github.com/fatih/color) | 一行代码彩色输出 |
| [`cheggaaa/pb`](https://github.com/cheggaaa/pb) | 命令行进度条，批量任务/下载/ETL 显示进度 |
| [`olekukonko/tablewriter`](https://github.com/olekukonko/tablewriter) | 终端输出对齐的 ASCII 表格，CLI 数据展示神器 |

## LLM / AI 应用

| 库 | 场景 |
|---|---|
| [`cloudwego/eino`](https://github.com/cloudwego/eino)（字节） | Go 的 LLM 应用框架：Chain/Graph 编排、组件抽象，类 langchain 但类型安全 |
| [`cloudwego/eino-ext`](https://github.com/cloudwego/eino-ext) | eino 扩展组件（模型供应商、向量库、工具） |
| [`tmc/langchaingo`](https://github.com/tmc/langchaogo) | langchain 的 Go 移植 |
| [`sashabaranov/go-openai`](https://github.com/sashabaranov/go-openai) | OpenAI 兼容 API 轻客户端（大多数国产模型都兼容） |
| [`pgvector/pgvector-go`](https://github.com/pgvector/pgvector-go) | PostgreSQL 向量检索驱动配套 |

## 实用工具

| 库 | 场景 |
|---|---|
| [`samber/lo`](https://github.com/samber/lo) | lodash 风格泛型工具（Map/Filter/GroupBy/Chunk…），消灭手写 for 循环 |
| [`jinzhu/copier`](https://github.com/jinzhu/copier) | 结构体互相拷贝（DTO ↔ Entity），字段名对齐自动复制 |
| [`google/uuid`](https://github.com/google/uuid) | UUID 生成 |
| [`robfig/cron`](https://github.com/robfig/cron) | 定时任务，cron 表达式解析 |
| [`fsnotify/fsnotify`](https://github.com/fsnotify/fsnotify) | 监听文件变更（热加载、配置监听） |
| [`golang.org/x/time/rate`](https://pkg.go.dev/golang.org/x/time/rate) | 限流器（令牌桶），保护下游必备 |
| [`schollz/croc`](https://github.com/schollz/croc) | 两台机器之间安全传文件，一条命令搞定 |
| [`golang-module/carbon`](https://github.com/golang-module/carbon) | 语义化日期时间库：`carbon.Parse("2026-09-24").AddDay()`，比 time 手算舒服 |
| [`gocolly/colly`](https://github.com/gocolly/colly) | 网页爬虫框架：回调式抓取、自动限速、缓存，写采集器首选 |

## 开发工具链（go install 的效率工具）

| 工具 | 场景 |
|---|---|
| [`cosmtrek/air`](https://github.com/cosmtrek/air) | 开发时保存即热重载，告别手动 go run |
| [`go-task/task`](https://github.com/go-task/task) | 比 Make 更好读的任务运行器（Taskfile.yml），零 Make 语法负担 |

## 测试

| 库 | 场景 |
|---|---|
| [`stretchr/testify`](https://github.com/stretchr/testify) | assert/require/suite，测试代码可读性翻倍 |
| [`uber-go/mock`](https://github.com/uber-go/mock) | 接口 mock 生成（golang/mock 的维护续作） |
| [`testcontainers-go`](https://github.com/testcontainers/testcontainers-go) | 集成测试起真实 MySQL/Redis/Kafka 容器，比 mock 数据库行为可信 |
| [`httptest`](https://pkg.go.dev/net/http/httptest)（标准库） | HTTP handler 单测标配 |

## 代码片段

见 [snippets/](snippets/) —— 优雅退出、单例缓存、context 超时封装等常用套路。

## 参考来源

- [必须知道的 17 个 Go 开发库（polarisxu 公众号）](https://mp.weixin.qq.com/s/vlpTUltiV_ZR8Ql95h5lBQ)
- [Go 语言中文网 · 每日一库系列](daily-libs.md)（持续收录中）
