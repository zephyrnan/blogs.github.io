# 部署到 GitHub Pages

本文档介绍如何将博客部署到 GitHub Pages。

## 准备工作

1. 在 GitHub 上创建一个新仓库（例如：`blogs`）
2. 确保本地已安装 Git

## 配置步骤

### 1. 修改 base 路径

在 `docs/.vuepress/config.js` 中修改 `base` 配置：

```js
export default defineUserConfig({
  // 如果仓库名是 blogs，则设置为：
  base: '/blogs/',
  // 其他配置...
})
```

### 2. 修改部署脚本

编辑 `deploy.sh` 文件，将最后一行的 `<USERNAME>` 和 `<REPO>` 替换为你的信息：

```bash
git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
```

例如：
```bash
git push -f git@github.com:illusionno/blogs.git master:gh-pages
```

### 3. 执行部署

在项目根目录下运行：

```bash
# Git Bash (Windows) 或 Terminal (Mac/Linux)
sh deploy.sh
```

### 4. 配置 GitHub Pages

1. 进入你的 GitHub 仓库
2. 点击 `Settings` → `Pages`
3. 在 `Source` 下选择 `gh-pages` 分支
4. 保存后等待几分钟

### 5. 访问博客

你的博客将部署在：
```
https://<USERNAME>.github.io/<REPO>/
```

例如：`https://illusionno.github.io/blogs/`

## 更新博客

每次更新内容后，只需再次运行：

```bash
sh deploy.sh
```

## 常见问题

### 1. 部署后页面样式丢失

检查 `config.js` 中的 `base` 配置是否正确。

### 2. 执行 deploy.sh 出错

确保使用 Git Bash 执行脚本，PowerShell 可能无法正确执行 shell 脚本。

### 3. 推送到 GitHub 失败

确保已配置 SSH 密钥，或者将 SSH 地址改为 HTTPS：

```bash
git push -f https://github.com/<USERNAME>/<REPO>.git master:gh-pages
```

## 自定义域名（可选）

如果你有自定义域名，可以：

1. 在 `docs/.vuepress/public` 目录下创建 `CNAME` 文件
2. 在文件中写入你的域名，例如：`blog.example.com`
3. 在域名服务商处配置 DNS 解析

## 参考资料

- [VuePress 部署文档](https://v2.vuepress.vuejs.org/zh/guide/deployment.html)
- [GitHub Pages 文档](https://docs.github.com/cn/pages)
