# Go 代码片段

> 手写过的、每次都要搜的套路，收集在这里。按需添加 `xxx.md` 或 `xxx_test.go`。

## 计划收集的片段

- [ ] `graceful-shutdown.md` —— http.Server 优雅退出（SIGTERM → Shutdown 带超时）
- [ ] `singleton-cache.md` —— singleflight + 过期时间的单飞缓存
- [ ] `worker-pool.md` —— errgroup + semaphore 控制并发上限的 worker 池
- [ ] `retry-with-backoff.md` —— 指数退避重试（可中断）
- [ ] `http-timeout-wrapper.md` —— 给任意函数套 context 超时的封装
- [ ] `pg-listening.md` / `mysql-batch-upsert.md` —— 数据库批量写入模板

## 格式建议

每个片段一个文件，开头写清**场景**和**为什么这么写**（坑在哪），代码放后面。
