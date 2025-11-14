<template>
  <div id="vcomments" class="valine-wrapper"></div>
</template>

<script setup>
import { onMounted, watch } from 'vue'
import { usePageData } from '@vuepress/client'
import Valine from 'valine'

const page = usePageData()

const initValine = () => {
  // 检查是否在浏览器环境
  if (typeof window === 'undefined') return

  // Valine 配置
  new Valine({
    el: '#vcomments',
    appId: 'sLLFTcoWHCJVJOdd9UsscnGE-gzGzoHs', // LeanCloud AppID
    appKey: 'NcwfyGUEwWLSt8fu7uCcglXC', // LeanCloud AppKey
    placeholder: '留下你的评论吧~',
    avatar: 'robohash',
    pageSize: 10,
    visitor: true, // 文章访问量统计
    highlight: true,
    recordIP: true,
    serverURLs: '', // 国内版不需要填写
    path: page.value.path,
    lang: 'zh-CN',
  })
}

onMounted(() => {
  initValine()
})

// 监听路由变化，重新初始化评论
watch(() => page.value.path, () => {
  // 清空评论区
  const el = document.getElementById('vcomments')
  if (el) {
    el.innerHTML = ''
  }
  // 重新初始化
  setTimeout(initValine, 200)
})
</script>

<style scoped>
.valine-wrapper {
  margin-top: 40px;
  padding-top: 20px;
  border-top: 1px solid var(--c-border);
}

@media (max-width: 719px) {
  .valine-wrapper {
    margin-top: 30px;
  }
}
</style>
