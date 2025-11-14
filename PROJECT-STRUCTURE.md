# 项目目录结构说明

```
blogs/
│
├── docs/                                      # 文档根目录
│   │
│   ├── .vuepress/                             # VuePress 配置目录
│   │   ├── config.js                          # 站点配置文件
│   │   │                                      # - 配置标题、描述、导航栏、侧边栏等
│   │   │                                      # - 配置部署路径（base）
│   │   │
│   │   ├── public/                            # 静态资源目录
│   │   │   ├── README.md                      # 静态资源使用说明
│   │   │   ├── avatar.jpg                     # 头像（需自行添加）
│   │   │   ├── logo.png                       # Logo（需自行添加）
│   │   │   └── images/                        # 图片文件夹
│   │   │       └── ...                        # 文章中使用的图片
│   │   │
│   │   ├── styles/                            # 样式目录
│   │   │   ├── index.scss                     # 全局自定义样式
│   │   │   │                                  # - 暗黑模式样式
│   │   │   │                                  # - 首页动画效果
│   │   │   │                                  # - 代码块样式等
│   │   │   │
│   │   │   └── palette.scss                   # 调色板（主题颜色）
│   │   │                                      # - 主题色配置
│   │   │                                      # - 背景色、文字色等
│   │   │
│   │   ├── .cache/                            # VuePress 缓存（自动生成）
│   │   ├── .temp/                             # 临时文件（自动生成）
│   │   └── dist/                              # 构建输出目录（自动生成）
│   │
│   ├── posts/                                 # 博客文章目录
│   │   ├── README.md                          # 文章列表页
│   │   │
│   │   ├── JavaScript 学习笔记.md             # 前端开发文章
│   │   ├── TypeScript 快速上手.md
│   │   ├── Vue3 学习笔记.md
│   │   ├── HTML5 与 CSS 综合学习笔记.md
│   │   ├── CSS 属性速查手册.md
│   │   ├── AJAX 学习笔记.md
│   │   ├── Promise 学习笔记.md
│   │   ├── Axios完整学习笔记.md
│   │   ├── Node.js 学习笔记.md
│   │   │
│   │   ├── SpringBoot 完整学习笔记.md         # 后端开发文章
│   │   │
│   │   └── GitHub新手完全指南.md              # 开发工具文章
│   │
│   ├── README.md                              # 首页配置
│   │                                          # - 网站标题和描述
│   │                                          # - 首页布局和功能特性
│   │
│   └── about.md                               # 关于页面
│                                              # - 个人介绍
│                                              # - 联系方式
│
├── node_modules/                              # npm 依赖包（自动生成）
│   └── ...                                    # 所有项目依赖
│
├── .gitignore                                 # Git 忽略文件配置
│                                              # - 忽略 node_modules
│                                              # - 忽略构建输出和缓存
│
├── deploy.sh                                  # GitHub Pages 部署脚本
│                                              # - 自动构建和推送到 gh-pages 分支
│
├── package.json                               # 项目配置文件
│                                              # - 项目信息和依赖
│                                              # - 脚本命令
│
├── package-lock.json                          # 依赖版本锁定文件（自动生成）
│
├── README.md                                  # 项目说明文档
│                                              # - 项目介绍
│                                              # - 安装和使用说明
│
├── DEPLOY.md                                  # 部署说明文档
│                                              # - GitHub Pages 部署详细步骤
│                                              # - 常见问题解决
│
├── USAGE.md                                   # 使用指南
│                                              # - 快速上手指南
│                                              # - 常用操作说明
│
└── PROJECT-STRUCTURE.md                       # 项目结构说明（本文件）
```

## 核心文件说明

### 配置文件

| 文件 | 作用 |
|------|------|
| `docs/.vuepress/config.js` | VuePress 核心配置，包括标题、导航、侧边栏等 |
| `docs/.vuepress/styles/palette.scss` | 主题颜色配置 |
| `docs/.vuepress/styles/index.scss` | 全局自定义样式 |
| `package.json` | 项目依赖和脚本配置 |

### 内容文件

| 文件 | 作用 |
|------|------|
| `docs/README.md` | 博客首页 |
| `docs/about.md` | 关于页面 |
| `docs/posts/*.md` | 博客文章 |
| `docs/posts/README.md` | 文章列表页 |

### 部署文件

| 文件 | 作用 |
|------|------|
| `deploy.sh` | GitHub Pages 部署脚本 |
| `.gitignore` | Git 忽略规则 |
| `DEPLOY.md` | 部署文档 |

### 文档文件

| 文件 | 作用 |
|------|------|
| `README.md` | 项目说明 |
| `USAGE.md` | 使用指南 |
| `PROJECT-STRUCTURE.md` | 目录结构说明（本文件） |

## 文件修改优先级

### 必须修改

1. `docs/.vuepress/config.js` - 修改标题、描述、base 路径
2. `deploy.sh` - 修改 GitHub 仓库地址
3. `docs/README.md` - 修改首页内容
4. `docs/about.md` - 修改个人信息

### 建议修改

1. `docs/.vuepress/styles/palette.scss` - 自定义主题颜色
2. `package.json` - 修改 author 等信息
3. `docs/.vuepress/public/` - 添加头像、logo 等图片

### 可选修改

1. `docs/.vuepress/styles/index.scss` - 添加自定义样式
2. `docs/posts/README.md` - 修改文章列表页样式

## 自动生成的目录（不要提交到 Git）

- `node_modules/` - npm 依赖包
- `docs/.vuepress/.cache/` - VuePress 缓存
- `docs/.vuepress/.temp/` - 临时文件
- `docs/.vuepress/dist/` - 构建输出

这些目录已经在 `.gitignore` 中被忽略。

## 添加新文章的流程

1. 在 `docs/posts/` 创建 `.md` 文件
2. 添加 frontmatter（文章元信息）
3. 编写文章内容
4. 在 `config.js` 的 sidebar 中添加链接
5. 本地预览：`npm run dev`
6. 部署：`sh deploy.sh`

## 静态资源管理

所有静态资源（图片、图标等）应放在 `docs/.vuepress/public/` 目录下：

```
public/
├── avatar.jpg          # 头像
├── logo.png           # Logo
└── images/            # 文章图片
    ├── article1/
    │   └── image.jpg
    └── article2/
        └── image.jpg
```

在 Markdown 中引用：

```markdown
![图片](/images/article1/image.jpg)
```

## 依赖说明

### 核心依赖

- `vuepress@2.0.0-rc.26` - VuePress 核心
- `vue@3.5.24` - Vue 3 框架
- `@vuepress/bundler-vite` - Vite 打包工具
- `@vuepress/theme-default` - 默认主题
- `sass-embedded` - SCSS 编译器

所有依赖都在 `package.json` 的 `devDependencies` 中定义。

## 常用命令

```bash
# 开发
npm run dev              # 启动开发服务器
npm run build            # 构建生产版本
npm run clean            # 清除缓存

# 依赖管理
npm install              # 安装依赖
npm update               # 更新依赖

# 部署
sh deploy.sh             # 部署到 GitHub Pages
```

## 注意事项

1. **不要直接修改 `node_modules/`** - 所有依赖通过 `npm install` 安装
2. **不要提交构建产物** - `dist/`、`.cache/`、`.temp/` 已被忽略
3. **图片路径使用绝对路径** - 从 `/` 开始，表示 `public/` 目录
4. **文章文件名避免使用空格** - 建议使用连字符（`-`）或下划线（`_`）
5. **修改 `config.js` 后需重启开发服务器** - 配置不会热更新
