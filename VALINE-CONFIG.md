# Valine 评论系统配置指南

本博客已集成 Valine 评论系统，只需简单配置即可启用。

## 📋 配置步骤

### 1. 注册 LeanCloud

Valine 使用 LeanCloud 作为后端服务，需要先注册账号：

**国内版（推荐）：**
- 访问：https://console.leancloud.cn/
- 点击「注册」创建账号
- 完成实名认证（免费用户也需要）

**国际版：**
- 访问：https://console.leancloud.app/
- 无需实名认证，但可能速度较慢

### 2. 创建应用

1. 登录 LeanCloud 控制台
2. 点击「创建应用」
3. 应用名称：`blog-comments`（可自定义）
4. 选择「开发版」（免费）
5. 点击「创建」

### 3. 获取 AppID 和 AppKey

1. 进入刚创建的应用
2. 点击左侧菜单「设置」→「应用凭证」
3. 复制 `AppID` 和 `AppKey`（注意是 AppKey，不是 MasterKey）

### 4. 配置安全域名

为了安全，需要配置允许的域名：

1. 在应用设置中，找到「安全中心」
2. 在「Web 安全域名」中添加：
   ```
   https://zephyrnan.github.io
   localhost:8080
   ```
3. 保存

### 5. 更新组件配置

编辑文件 `docs/.vuepress/components/ValineComment.vue`，替换以下内容：

```javascript
new Valine({
  el: '#vcomments',
  appId: 'YOUR_APP_ID',      // 👈 替换为你的 AppID
  appKey: 'YOUR_APP_KEY',    // 👈 替换为你的 AppKey
  // ... 其他配置
})
```

### 6. 在文章中使用

在任何需要评论的 Markdown 文件底部添加：

```markdown
---
title: 你的文章标题
---

## 文章内容...

<ValineComment />
```

## ✨ 功能特性

Valine 评论系统提供以下功能：

- ✅ 无需登录即可评论
- ✅ Markdown 支持
- ✅ 表情包支持
- ✅ 访问量统计
- ✅ 邮件通知（需额外配置）
- ✅ 评论管理（在 LeanCloud 控制台）
- ✅ 代码高亮
- ✅ 防垃圾评论

## 🎨 自定义配置

你可以在 `ValineComment.vue` 中修改更多配置：

```javascript
new Valine({
  el: '#vcomments',
  appId: 'YOUR_APP_ID',
  appKey: 'YOUR_APP_KEY',

  // 评论占位符
  placeholder: '留下你的评论吧~',

  // 头像类型
  // 可选：mp, identicon, monsterid, wavatar, robohash, retro, hide
  avatar: 'robohash',

  // 每页评论数
  pageSize: 10,

  // 访问量统计
  visitor: true,

  // 代码高亮
  highlight: true,

  // 记录评论者IP
  recordIP: true,

  // 评论列表排序方式
  // 可选：latest（最新） | hottest（最热）
  meta: ['nick', 'mail', 'link'],

  // 语言
  lang: 'zh-CN',

  // 国际版需要填写此项
  // serverURLs: 'https://your-app-id.api.lncldglobal.com',
})
```

## 🔔 邮件通知配置（可选）

要启用评论邮件通知，需要额外配置：

1. 部署 Valine-Admin（评论管理和邮件提醒）
2. 配置邮箱服务器
3. 详见：https://github.com/DesertsP/Valine-Admin

## 📊 评论管理

在 LeanCloud 控制台管理评论：

1. 进入应用
2. 点击「数据存储」→「结构化数据」
3. 选择 `Comment` 表
4. 可以查看、编辑、删除评论

## 🔒 安全建议

1. **不要泄露 MasterKey**：只使用 AppID 和 AppKey
2. **配置安全域名**：防止其他网站盗用你的配置
3. **定期备份**：在 LeanCloud 导出评论数据备份
4. **启用垃圾评论过滤**：可在 LeanCloud 配置 Akismet 反垃圾

## ❓ 常见问题

### Q: 评论不显示？
A: 检查：
- AppID 和 AppKey 是否正确
- 是否配置了安全域名
- 浏览器控制台是否有错误

### Q: 国内版和国际版的区别？
A:
- 国内版：需实名认证，速度快，有每日请求限制
- 国际版：无需实名，可能被墙，无请求限制

### Q: 免费版够用吗？
A:
- 免费版每天 30000 次 API 请求
- 对于个人博客完全够用

### Q: 如何防止垃圾评论？
A:
1. 在 LeanCloud 启用 Akismet
2. 使用 Valine-Admin 进行人工审核
3. 定期清理垃圾评论

## 📚 相关资源

- [Valine 官方文档](https://valine.js.org/)
- [LeanCloud 文档](https://leancloud.cn/docs/)
- [Valine-Admin](https://github.com/DesertsP/Valine-Admin)

## 🚀 快速测试

配置完成后：

1. 启动开发服务器：`npm run dev`
2. 在任意文章底部添加 `<ValineComment />`
3. 访问文章页面
4. 尝试发表评论
5. 在 LeanCloud 控制台查看评论数据

---

**配置完成后，记得将配置提交到 Git 仓库！**
