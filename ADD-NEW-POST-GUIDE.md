# 📝 添加新笔记文件指南

本指南将教你如何向博客添加新的技术笔记文章。

## 🚀 快速开始

### 方式一：完整手动流程

#### 步骤 1: 创建 Markdown 文件

在 `docs/posts/` 目录下创建新的 `.md` 文件：

```bash
# 文件命名建议：使用英文和连字符
# 例如：
docs/posts/React学习笔记.md
docs/posts/Docker入门指南.md
docs/posts/前端性能优化.md
```

**命名规范建议：**
- ✅ 使用中文：方便管理和识别
- ✅ 文件名要有意义：一看就知道内容
- ✅ 避免特殊字符：只用中文、英文、数字、连字符
- ❌ 不要用空格：虽然可以，但不推荐

#### 步骤 2: 添加 Frontmatter（文章元信息）

在文件开头添加 frontmatter：

```markdown
---
title: React 学习笔记
date: 2024-11-14
categories:
  - 前端开发
tags:
  - React
  - JavaScript
  - 组件化
---
```

**Frontmatter 字段说明：**
- `title`: 文章标题（必填）
- `date`: 发布日期（建议填写）
- `categories`: 分类（可选，用于归类）
- `tags`: 标签（可选，用于标记关键词）

#### 步骤 3: 编写文章内容

Frontmatter 后面就可以开始写正文了：

```markdown
---
title: React 学习笔记
date: 2024-11-14
categories:
  - 前端开发
tags:
  - React
---

# React 学习笔记

## 简介

React 是一个用于构建用户界面的 JavaScript 库...

## 核心概念

### 组件

组件是 React 的基础...

### Props

Props 用于组件间传递数据...

## 代码示例

\`\`\`javascript
function Welcome(props) {
  return <h1>Hello, {props.name}</h1>;
}
\`\`\`

## 总结

...

## 💬 评论交流

有任何问题或建议，欢迎在下方留言交流！

<ValineComment />
```

#### 步骤 4: 更新侧边栏配置

编辑 `docs/.vuepress/config.js`，在 `sidebar` 配置中添加新文章：

```javascript
sidebar: {
  '/posts/': [
    {
      text: '前端开发',
      children: [
        '/posts/JavaScript 学习笔记.md',
        '/posts/TypeScript 快速上手.md',
        '/posts/Vue3 学习笔记.md',
        '/posts/React学习笔记.md',  // 👈 新添加的文章
        // ... 其他文章
      ],
    },
    // ... 其他分类
  ],
},
```

**注意事项：**
- 路径要以 `/posts/` 开头
- 文件名包含 `.md` 扩展名
- 按照你希望的顺序排列

#### 步骤 5: 本地测试

```bash
# 启动开发服务器
npm run dev

# 访问 http://localhost:8080
# 检查：
# 1. 文章是否出现在侧边栏
# 2. 文章内容是否正确显示
# 3. 代码高亮是否正常
# 4. 评论组件是否显示
```

#### 步骤 6: 提交到 Git

```bash
# 添加新文件和修改的配置
git add docs/posts/React学习笔记.md
git add docs/.vuepress/config.js

# 提交
git commit -m "feat: add React learning notes"

# 推送到 GitHub
git push
```

#### 步骤 7: 部署到线上

```bash
sh deploy.sh
```

等待 1-2 分钟，新文章就会出现在你的博客上！

---

## 📂 文章分类建议

根据你的博客结构，可以将文章放在以下分类中：

### 1. 前端开发
适合：JavaScript、TypeScript、Vue、React、HTML/CSS 等前端技术

### 2. 后端开发
适合：SpringBoot、Node.js、数据库、API 设计等后端技术

### 3. 开发工具
适合：Git、Docker、CI/CD、编辑器配置等工具类

### 4. 其他分类（需要新建）
如果需要新建分类，在 `config.js` 中添加：

```javascript
sidebar: {
  '/posts/': [
    {
      text: '前端开发',
      children: [/* ... */],
    },
    {
      text: '后端开发',
      children: [/* ... */],
    },
    {
      text: '开发工具',
      children: [/* ... */],
    },
    // 新增分类
    {
      text: '算法与数据结构',  // 👈 新分类
      children: [
        '/posts/算法基础.md',
        '/posts/数据结构总结.md',
      ],
    },
  ],
},
```

---

## 📝 Markdown 编写技巧

### 1. 标题层级

```markdown
# 一级标题（文章标题，一般只用一次）
## 二级标题（章节标题）
### 三级标题（小节标题）
#### 四级标题（更细的分类）
```

### 2. 代码块

**单行代码：**
```markdown
使用 `const` 声明常量
```

**多行代码块：**
````markdown
```javascript
function hello() {
  console.log('Hello World');
}
```
````

**支持的语言：**
- `javascript` / `js`
- `typescript` / `ts`
- `vue`
- `html`
- `css` / `scss`
- `bash` / `shell`
- `json`
- `python`
- `java`
- 等等...

### 3. 列表

**无序列表：**
```markdown
- 项目 1
- 项目 2
  - 子项目 2.1
  - 子项目 2.2
```

**有序列表：**
```markdown
1. 第一步
2. 第二步
3. 第三步
```

### 4. 链接和图片

**链接：**
```markdown
[链接文字](https://example.com)
[MDN 文档](https://developer.mozilla.org)
```

**图片：**
```markdown
![图片描述](/images/screenshot.png)
```

**注意：** 图片要放在 `docs/.vuepress/public/images/` 目录下

### 5. 表格

```markdown
| 特性 | 说明 | 示例 |
|------|------|------|
| 响应式 | 数据驱动视图 | Vue、React |
| 组件化 | 可复用的 UI 单元 | 按钮、表单 |
```

### 6. 引用块

```markdown
> 这是一段引用文字
> 可以是名言警句
> 或者重要提示
```

### 7. 提示容器（VuePress 特有）

```markdown
::: tip 提示
这是一个提示信息
:::

::: warning 警告
这是一个警告信息
:::

::: danger 危险
这是一个危险警告
:::

::: details 点击展开
这是可以折叠的内容
:::
```

---

## 🎨 完整示例模板

创建一个新文件 `docs/posts/示例文章.md`：

```markdown
---
title: 这是文章标题
date: 2024-11-14
categories:
  - 前端开发
tags:
  - JavaScript
  - 教程
---

# 这是文章标题

## 📋 前言

简要介绍这篇文章的内容和目标...

## 🎯 主要内容

### 第一部分

详细说明...

#### 小节 1.1

具体内容...

**重点强调的内容**

*斜体文字*

### 第二部分

#### 代码示例

```javascript
// 这是示例代码
function example() {
  console.log('Hello World');
}
```

#### 表格展示

| 功能 | 说明 |
|------|------|
| 特性1 | 描述1 |
| 特性2 | 描述2 |

### 第三部分

::: tip 小贴士
这里可以写一些提示信息
:::

::: warning 注意
需要注意的事项
:::

## 🔗 参考资源

- [相关文档](https://example.com)
- [官方网站](https://example.com)

## 📝 总结

总结文章的核心要点...

## 💬 评论交流

有任何问题或建议，欢迎在下方留言交流！

<ValineComment />
```

---

## ⚡ 快捷命令（推荐）

为了简化流程，可以使用命令行快速创建文章：

### Windows (PowerShell)

```powershell
# 创建新文章
$title = "React学习笔记"
New-Item -Path "docs/posts/$title.md" -ItemType File -Force
```

### Linux / Mac (Bash)

```bash
# 创建新文章
touch docs/posts/React学习笔记.md
```

---

## 🔄 完整工作流程示例

假设你要添加一篇 "Docker 入门教程"：

```bash
# 1. 创建文件
# 在 docs/posts/ 目录手动创建 Docker入门教程.md

# 2. 编写内容（在编辑器中编辑）
# 添加 frontmatter 和正文内容

# 3. 更新配置（编辑 docs/.vuepress/config.js）
# 在适当的分类下添加文章路径

# 4. 本地测试
npm run dev
# 打开浏览器访问 http://localhost:8080 检查

# 5. 提交到 Git
git add docs/posts/Docker入门教程.md
git add docs/.vuepress/config.js
git commit -m "feat: add Docker tutorial"
git push

# 6. 部署
sh deploy.sh
```

---

## ❓ 常见问题

### Q: 文章不显示在侧边栏？
A: 检查 `config.js` 中的 sidebar 配置：
- 路径是否正确（要包含 `/posts/` 和 `.md`）
- 是否在正确的分类下
- 重启开发服务器

### Q: 中文文件名会有问题吗？
A: 不会！VuePress 完全支持中文文件名。

### Q: 图片如何添加？
A:
1. 将图片放到 `docs/.vuepress/public/images/`
2. 在文章中引用：`![描述](/images/图片名.png)`

### Q: 如何设置文章封面图？
A: 在 frontmatter 中添加：
```yaml
---
title: 文章标题
heroImage: /images/cover.jpg
---
```

### Q: 可以添加数学公式吗？
A: 需要安装额外的插件，如 `markdown-it-katex`

### Q: 如何自动生成目录？
A: VuePress 默认会根据标题自动生成右侧目录

---

## 🎯 最佳实践

### 1. 文章结构建议
- 开头有简介
- 有清晰的章节划分
- 代码示例丰富
- 末尾有总结
- 添加评论组件

### 2. 命名建议
- 文件名清晰明了
- 使用中文或拼音
- 避免特殊字符

### 3. 内容建议
- 排版清晰
- 代码可运行
- 有实际例子
- 注重可读性

### 4. 提交建议
- commit 信息清晰
- 遵循约定式提交
  - `feat:` 新功能
  - `fix:` 修复
  - `docs:` 文档
  - `update:` 更新内容

---

## 📚 相关资源

- [Markdown 基础语法](https://markdown.com.cn/basic-syntax/)
- [VuePress Markdown 扩展](https://v2.vuepress.vuejs.org/zh/guide/markdown.html)
- [Emoji 速查表](https://emojipedia.org/)

---

**现在你就可以开始添加你的第一篇新文章了！** 🎉

有任何问题随时问我！
