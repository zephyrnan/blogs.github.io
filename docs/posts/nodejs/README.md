# 📗 Node.js 深入学习系列

欢迎来到 Node.js 深入学习系列！这个系列涵盖了 Node.js 开发的核心知识点，从基础模块到高级应用，帮助你全面掌握 Node.js 开发。

<style scoped>
.post-nav {
  display: flex;
  flex-direction: column;
  gap: 15px;
  margin: 30px 0;
  max-width: 900px;
}

.post-card {
  display: flex;
  align-items: center;
  padding: 20px 25px;
  background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
  border: 2px solid #e3f2fd;
  border-radius: 12px;
  text-decoration: none;
  color: inherit;
  transition: all 0.3s ease;
  cursor: pointer;
  width: 100%;
}

.post-card:hover {
  transform: translateX(5px);
  border-color: #1e88e5;
  box-shadow: 0 4px 20px rgba(30, 136, 229, 0.15);
}

.card-icon {
  font-size: 36px;
  margin-right: 20px;
  flex-shrink: 0;
  transition: transform 0.3s ease;
  min-width: 50px;
  text-align: center;
}

.post-card:hover .card-icon {
  transform: scale(1.15);
}

.card-content {
  flex: 1;
}

.card-title {
  margin: 0 0 6px 0;
  font-size: 18px;
  font-weight: 600;
  color: #1e88e5;
}

.post-card:hover .card-title {
  color: #1565c0;
}

.card-desc {
  margin: 0;
  font-size: 14px;
  color: #666;
  line-height: 1.6;
}

.card-arrow {
  font-size: 24px;
  color: #1e88e5;
  margin-left: 20px;
  transition: transform 0.3s ease;
  flex-shrink: 0;
}

.post-card:hover .card-arrow {
  transform: translateX(8px);
}

@media (max-width: 768px) {
  .post-nav {
    max-width: 100%;
  }
  .post-card {
    padding: 15px 18px;
  }
  .card-icon {
    font-size: 28px;
    margin-right: 15px;
    min-width: 40px;
  }
  .card-title {
    font-size: 16px;
  }
  .card-desc {
    font-size: 13px;
  }
}
</style>

## 📚 学习路线

建议按照以下顺序学习，逐步深入 Node.js 开发：

<div class="post-nav">
  <a href="/posts/nodejs/Node.js-文件系统模块.html" class="post-card">
    <div class="card-icon">📁</div>
    <div class="card-content">
      <div class="card-title">1️⃣ Node.js 文件系统模块</div>
      <div class="card-desc">掌握 fs 模块、文件读写、流式处理、目录操作等核心功能</div>
    </div>
    <div class="card-arrow">→</div>
  </a>

  <a href="/posts/nodejs/Node.js-模块化设计.html" class="post-card">
    <div class="card-icon">📦</div>
    <div class="card-content">
      <div class="card-title">2️⃣ Node.js 模块化设计</div>
      <div class="card-desc">理解 CommonJS 与 ES6 模块系统、模块导入导出机制</div>
    </div>
    <div class="card-arrow">→</div>
  </a>

  <a href="/posts/nodejs/Node.js-NPM包管理.html" class="post-card">
    <div class="card-icon">📚</div>
    <div class="card-content">
      <div class="card-title">3️⃣ Node.js NPM 包管理</div>
      <div class="card-desc">学习 package.json 配置、依赖管理、npm 脚本使用</div>
    </div>
    <div class="card-arrow">→</div>
  </a>

  <a href="/posts/nodejs/Node.js-HTTP模块.html" class="post-card">
    <div class="card-icon">🌐</div>
    <div class="card-content">
      <div class="card-title">4️⃣ Node.js HTTP 模块</div>
      <div class="card-desc">创建 HTTP 服务器、处理请求响应、构建 RESTful API</div>
    </div>
    <div class="card-arrow">→</div>
  </a>

  <a href="/posts/nodejs/Node.js-Express框架.html" class="post-card">
    <div class="card-icon">🚂</div>
    <div class="card-content">
      <div class="card-title">5️⃣ Node.js Express 框架</div>
      <div class="card-desc">掌握 Express 路由、中间件、模板引擎、MVC 架构</div>
    </div>
    <div class="card-arrow">→</div>
  </a>

  <a href="/posts/nodejs/Node.js-MongoDB数据库.html" class="post-card">
    <div class="card-icon">🍃</div>
    <div class="card-content">
      <div class="card-title">6️⃣ Node.js MongoDB 数据库</div>
      <div class="card-desc">学习 MongoDB 基础、Mongoose ODM、数据模型设计</div>
    </div>
    <div class="card-arrow">→</div>
  </a>
</div>

## 🎯 学习目标

通过本系列学习，你将能够：

- ✅ 熟练使用 Node.js 核心模块
- ✅ 理解模块化编程思想
- ✅ 掌握 npm 包管理工具
- ✅ 创建 HTTP 服务器和 RESTful API
- ✅ 使用 Express 框架构建 Web 应用
- ✅ 集成 MongoDB 数据库
- ✅ 开发完整的全栈应用

## 💡 学习建议

1. **循序渐进**: 按照推荐顺序学习，打好基础
2. **动手实践**: 每个章节都有代码示例，建议亲自运行
3. **案例学习**: 重点关注实战案例部分
4. **总结归纳**: 学完每个模块后做好笔记
5. **持续练习**: 通过实际项目巩固知识

## 🔗 相关资源

- [Node.js 官方文档](https://nodejs.org/docs/)
- [Express 官方文档](https://expressjs.com/)
- [MongoDB 官方文档](https://docs.mongodb.com/)
- [NPM 官方网站](https://www.npmjs.com/)

---

<div style="text-align: center; margin-top: 50px; padding: 30px; background: linear-gradient(135deg, #e3f2fd 0%, #f3e5f5 100%); border-radius: 12px;">
  <h3 style="color: #1e88e5; margin-bottom: 15px;">🚀 开始学习之旅</h3>
  <p style="color: #666; font-size: 16px;">从第一篇开始，逐步掌握 Node.js 开发技能！</p>
  <p style="color: #999; font-size: 14px; margin-top: 10px;">如有疑问，欢迎随时交流讨论</p>
</div>
