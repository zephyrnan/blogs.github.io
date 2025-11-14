#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

echo "🚀 开始构建..."

# 生成静态文件
npm run build

echo "✅ 构建完成！"

# 进入生成的文件夹
cd docs/.vuepress/dist

echo "📦 准备部署..."

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy: update blog'

echo "🎉 准备推送到 GitHub..."

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# 请将下面的 <USERNAME> 和 <REPO> 替换为你的 GitHub 用户名和仓库名
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

echo "✅ 部署完成！"
echo "📝 提示：请取消注释并配置 git push 命令"

cd -
