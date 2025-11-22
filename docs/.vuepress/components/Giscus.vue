<template>
  <div class="giscus-wrapper">
    <div ref="giscusContainer" class="giscus-container"></div>
  </div>
</template>

<script>
import { defineComponent, ref, onMounted, watch } from 'vue'
import { usePageData } from '@vuepress/client'

export default defineComponent({
  name: 'Giscus',
  props: {
    // Giscus 配置参数 - 需要填写您的实际参数
    repo: {
      type: String,
      default: 'zephyrnan/zephyrnan.github.io' // 替换为您的 GitHub 用户名/仓库名
    },
    repoId: {
      type: String,
      default: 'R_kgDOQSxsvg' // 从 giscus.app 获取
    },
    category: {
      type: String,
      default: 'Announcements'
    },
    categoryId: {
      type: String,
      default: 'DIC_kwDOQSxsvs4CxrfH' // 从 giscus.app 获取
    },
    mapping: {
      type: String,
      default: 'pathname'
    },
    term: {
      type: String,
      default: ''
    },
    strict: {
      type: String,
      default: '0'
    },
    reactionsEnabled: {
      type: String,
      default: '1'
    },
    emitMetadata: {
      type: String,
      default: '0'
    },
    inputPosition: {
      type: String,
      default: 'top'
    },
    theme: {
      type: String,
      default: 'light'
    },
    lang: {
      type: String,
      default: 'zh-CN'
    },
    loading: {
      type: String,
      default: 'lazy'
    }
  },
  setup(props) {
    const giscusContainer = ref(null)
    const page = usePageData()

    const loadGiscus = () => {
      if (!giscusContainer.value) return

      // 清除之前的内容
      giscusContainer.value.innerHTML = ''

      // 检查必要参数
      if (!props.repoId || !props.categoryId) {
        giscusContainer.value.innerHTML = `
          <div style="text-align: center; padding: 40px; background: #fff3cd; border-radius: 8px; border: 1px solid #ffc107;">
            <h4 style="color: #856404; margin-bottom: 15px;">⚠️ Giscus 配置未完成</h4>
            <p style="color: #856404; font-size: 14px;">
              请先完成 Giscus 配置，获取 repoId 和 categoryId。<br>
              参考：<a href="https://giscus.app/zh-CN" target="_blank">giscus.app</a>
            </p>
          </div>
        `
        return
      }

      // 创建 script 元素
      const script = document.createElement('script')
      script.src = 'https://giscus.app/client.js'
      script.setAttribute('data-repo', props.repo)
      script.setAttribute('data-repo-id', props.repoId)
      script.setAttribute('data-category', props.category)
      script.setAttribute('data-category-id', props.categoryId)
      script.setAttribute('data-mapping', props.mapping)
      script.setAttribute('data-strict', props.strict)
      script.setAttribute('data-reactions-enabled', props.reactionsEnabled)
      script.setAttribute('data-emit-metadata', props.emitMetadata)
      script.setAttribute('data-input-position', props.inputPosition)
      script.setAttribute('data-theme', props.theme)
      script.setAttribute('data-lang', props.lang)
      script.setAttribute('data-loading', props.loading)
      script.setAttribute('crossorigin', 'anonymous')
      script.async = true

      giscusContainer.value.appendChild(script)
    }

    onMounted(() => {
      loadGiscus()
    })

    // 监听页面变化，重新加载评论
    watch(() => page.value.path, () => {
      loadGiscus()
    })

    return {
      giscusContainer
    }
  }
})
</script>

<style scoped>
.giscus-wrapper {
  margin-top: 30px;
  padding: 20px 0;
}

.giscus-container {
  min-height: 200px;
}

/* Giscus iframe 样式调整 */
:deep(.giscus) {
  max-width: 100%;
}

:deep(.giscus-frame) {
  width: 100%;
  border: none;
}
</style>
