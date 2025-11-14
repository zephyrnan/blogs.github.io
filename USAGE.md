# 快速使用指南

## 本地开发

### 启动开发服务器

```bash
npm run dev
# 或
npm run docs:dev
```

访问 http://localhost:8080 查看博客。

### 添加新文章

1. 在 `docs/posts/` 目录下创建新的 `.md` 文件

2. 在文件开头添加文章信息（frontmatter）：

```yaml
---
title: 你的文章标题
date: 2024-01-12
categories:
  - 前端  # 可选：前端、后端、工具等
tags:
  - JavaScript  # 可以有多个标签
  - Vue3
---

# 你的文章标题

文章内容从这里开始...
```

3. 在 `docs/.vuepress/config.js` 的 sidebar 中添加文章链接：

```js
sidebar: {
  '/posts/': [
    {
      text: '前端开发',
      children: [
        '/posts/JavaScript 学习笔记.md',
        '/posts/你的新文章.md',  // 添加这里
      ],
    },
  ],
}
```

### 添加图片

1. 将图片放在 `docs/.vuepress/public/` 目录下，例如 `docs/.vuepress/public/images/photo.jpg`

2. 在 Markdown 中引用：

```markdown
![图片描述](/images/photo.jpg)
```

## 自定义配置

### 修改博客标题

编辑 `docs/.vuepress/config.js`:

```js
export default defineUserConfig({
  title: '你的博客名称',
  description: '你的博客描述',
})
```

### 修改导航栏

编辑 `docs/.vuepress/config.js` 中的 navbar：

```js
navbar: [
  { text: '首页', link: '/' },
  { text: '博客', link: '/posts/' },
  { text: '关于', link: '/about.md' },
  {
    text: '更多',
    children: [
      { text: 'GitHub', link: 'https://github.com/你的用户名' },
    ]
  },
]
```

### 修改主题颜色

编辑 `docs/.vuepress/styles/palette.scss`:

```scss
$color-brand: #3178c6;  // 改成你喜欢的颜色
```

### 添加自定义样式

编辑 `docs/.vuepress/styles/index.scss`:

```scss
// 你的自定义样式
.custom-class {
  color: red;
}
```

## 部署到 GitHub Pages

### 1. 创建 GitHub 仓库

在 GitHub 上创建一个新仓库，例如 `my-blog`。

### 2. 初始化本地 Git 仓库

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin git@github.com:你的用户名/my-blog.git
git push -u origin main
```

### 3. 修改配置

编辑 `docs/.vuepress/config.js`，设置 base 路径：

```js
export default defineUserConfig({
  base: '/my-blog/',  // 改成你的仓库名
  // ...
})
```

### 4. 修改部署脚本

编辑 `deploy.sh`，找到最后一行，取消注释并修改：

```bash
git push -f git@github.com:你的用户名/my-blog.git master:gh-pages
```

### 5. 执行部署

```bash
sh deploy.sh
```

### 6. 配置 GitHub Pages

1. 进入 GitHub 仓库页面
2. 点击 `Settings` → `Pages`
3. Source 选择 `gh-pages` 分支
4. 保存

几分钟后，你的博客就可以通过 `https://你的用户名.github.io/my-blog/` 访问了。

## 更新博客

每次添加或修改文章后：

```bash
# 本地预览
npm run dev

# 确认无误后部署
sh deploy.sh
```

## 常用命令

```bash
# 开发
npm run dev              # 启动开发服务器
npm run build            # 构建生产版本
npm run clean            # 清除缓存

# 部署
sh deploy.sh             # 部署到 GitHub Pages
```

## Markdown 语法提示

### 代码块

\`\`\`javascript
const hello = 'world';
console.log(hello);
\`\`\`

### 提示容器

\`\`\`markdown
::: tip 提示
这是一条提示
:::

::: warning 警告
这是一条警告
:::

::: danger 危险
这是一条危险警告
:::
\`\`\`

### 表格

```markdown
| 标题1 | 标题2 |
| ----- | ----- |
| 内容1 | 内容2 |
```

### 链接

```markdown
[链接文字](https://example.com)
[内部链接](/posts/article.md)
```

## 故障排除

### 端口被占用

```bash
npm run dev -- --port 8081
```

### 构建失败

```bash
npm run clean
npm run build
```

### 样式不生效

清除缓存并重启：

```bash
npm run clean
npm run dev
```

## 需要帮助？

- 查看 [VuePress 官方文档](https://v2.vuepress.vuejs.org/zh/)
- 查看项目的 README.md
- 查看 DEPLOY.md 了解部署详情
