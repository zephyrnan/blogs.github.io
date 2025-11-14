# 百度统计配置指南

本指南将帮助你快速集成百度统计，实现网站访问数据分析。

## 📋 配置步骤

### 1. 注册百度统计

1. 访问：https://tongji.baidu.com/
2. 使用百度账号登录（没有账号先注册）
3. 首次登录会提示创建网站

### 2. 创建网站

1. 点击「管理」→「网站列表」→「新增网站」
2. 填写网站信息：
   - **网站域名**：`zephyrnan.github.io`
   - **网站名称**：`楠渡余生的技术博客`
   - **网站首页**：`https://zephyrnan.github.io`
   - **行业类别**：选择「IT技术」或「个人博客」
3. 点击「确定」创建

### 3. 获取统计代码

1. 创建网站后，会自动跳转到「代码获取」页面
2. 或者在「管理」→「网站列表」中，点击「获取代码」
3. 复制统计代码，格式如下：

```html
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?xxxxxxxxxxxxxx";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>
```

**重要**：复制完整的统计代码，包括 `<script>` 标签！

### 4. 配置到博客

#### 方法一：自动配置（推荐）

我已经在配置文件中预留了位置，你只需要：

1. 从百度统计复制你的统计 ID（`hm.js?` 后面的那串字符）
2. 编辑 `docs/.vuepress/config.js`
3. 找到 `baiduAnalytics` 配置项
4. 将 `YOUR_BAIDU_ANALYTICS_ID` 替换为你的统计 ID

```javascript
// 例如，如果你的代码是：
// hm.src = "https://hm.baidu.com/hm.js?abc123def456";
// 那么你的ID就是：abc123def456

export default defineUserConfig({
  // ...
  head: [
    // ...
    // 百度统计
    ['script', {}, `
      var _hmt = _hmt || [];
      (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?YOUR_BAIDU_ANALYTICS_ID";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();
    `],
  ],
})
```

#### 方法二：直接添加完整代码

将百度统计提供的完整代码添加到 `head` 配置中。

### 5. 验证安装

1. 保存配置文件
2. 重启开发服务器：`npm run dev`
3. 访问本地博客：http://localhost:8080
4. 打开浏览器开发者工具（F12）
5. 查看「Network」标签，应该能看到 `hm.js` 的请求
6. 回到百度统计后台，点击「代码安装检查」
7. 等待 20 分钟左右，百度会自动检测代码是否正确安装

### 6. 部署到线上

配置完成后：

```bash
# 提交代码
git add docs/.vuepress/config.js
git commit -m "feat: add Baidu Analytics"
git push

# 部署到 GitHub Pages
sh deploy.sh
```

部署后等待几个小时，百度统计会开始收集数据。

## 📊 使用百度统计

### 查看统计数据

1. 登录百度统计后台：https://tongji.baidu.com/
2. 选择你的网站
3. 查看各项统计数据：
   - **实时访客**：当前在线人数
   - **流量分析**：PV、UV、IP 等基础指标
   - **来源分析**：访客从哪里来
   - **受访页面**：哪些页面最受欢迎
   - **访客属性**：地域、浏览器、操作系统等

### 常用功能

#### 1. 实时访客

- 查看当前在线访客数量
- 实时流量变化
- 当前访问的页面

#### 2. 趋势分析

- 浏览量（PV）趋势
- 访客数（UV）趋势
- IP 数趋势
- 跳出率变化

#### 3. 来源分析

- 搜索引擎
- 外部链接
- 直接访问

#### 4. 页面分析

- 受访页面排行
- 页面停留时间
- 入口页面
- 退出页面

## ⚙️ 高级配置

### 事件统计

如果需要统计特定事件（如按钮点击），可以使用事件跟踪：

```javascript
// 在需要统计的地方添加代码
_hmt.push(['_trackEvent', '类别', '动作', '标签', '值'])

// 例如：统计下载按钮点击
document.getElementById('download-btn').addEventListener('click', function() {
  _hmt.push(['_trackEvent', 'download', 'click', 'pdf-guide', 1])
})
```

### 自定义变量

统计用户的自定义属性：

```javascript
// 用户登录后
_hmt.push(['_setCustomVar', 1, 'user_type', 'registered', 2])
```

## 🔒 隐私说明

### 数据收集范围

百度统计会收集以下信息：
- 页面访问记录
- 访客浏览器、操作系统信息
- 访客 IP 地址（用于地域分析）
- 页面停留时间
- 点击行为

### 隐私保护建议

1. **添加隐私政策**：在网站底部或关于页面说明使用了统计服务
2. **遵守法规**：确保符合当地隐私保护法规
3. **数据安全**：定期查看百度统计的隐私政策更新

### 隐私政策模板

可以在关于页面或网站底部添加：

```markdown
## 隐私声明

本站使用百度统计分析访问数据，以改善内容质量和用户体验。
统计工具会收集匿名的访问信息，不会收集个人身份信息。
```

## ❓ 常见问题

### Q: 代码安装了但没有数据？

A: 可能的原因：
1. 统计代码 ID 错误
2. 代码未正确部署到线上
3. 需要等待几小时后才有数据
4. 被广告拦截插件屏蔽

解决方法：
- 检查浏览器控制台是否有错误
- 确认 hm.js 文件是否正常加载
- 关闭广告拦截插件测试
- 使用百度统计的「代码安装检查」功能

### Q: 本地开发时是否会被统计？

A: 会的。如果不想统计本地开发数据，可以：

```javascript
// 只在生产环境启用统计
const isProd = process.env.NODE_ENV === 'production'

export default defineUserConfig({
  head: [
    ...(isProd ? [
      ['script', {}, `百度统计代码`]
    ] : []),
  ],
})
```

### Q: 统计数据准确吗？

A:
- PV（浏览量）：较准确
- UV（访客数）：基于 Cookie，较准确
- IP：可能因为代理、NAT 导致偏差
- 地域：基于 IP，大致准确

### Q: 如何防止统计代码被拦截？

A:
- 使用百度统计提供的多种备用域名
- 考虑使用自建统计（如 Umami）
- 无法完全避免，接受一定的数据损失

### Q: 可以同时使用多个统计工具吗？

A: 可以！例如同时使用：
- 百度统计（国内用户）
- Google Analytics（全球用户）
- 简单的访问计数（如 Valine 的 visitor 功能）

## 📚 相关资源

- [百度统计官网](https://tongji.baidu.com/)
- [百度统计帮助中心](https://tongji.baidu.com/web/help/index)
- [百度统计API文档](https://tongji.baidu.com/api/manual/)

## 🎯 最佳实践

1. **定期查看数据**：每周查看一次统计报表
2. **分析趋势**：关注流量变化趋势，找出原因
3. **优化内容**：根据受欢迎的文章类型，创作更多类似内容
4. **改善用户体验**：根据跳出率、停留时间等指标优化网站
5. **SEO优化**：分析搜索关键词，优化 SEO
6. **设置目标**：在百度统计中设置转化目标（如阅读完整文章）

---

**配置完成后，记得提交代码并部署！**

```bash
git add .
git commit -m "feat: add Baidu Analytics"
sh deploy.sh
```
