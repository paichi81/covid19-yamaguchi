<template>
  <data-view class="SvgCard" :title="title" :title-id="titleId" :date="date">
    <template v-slot:button>
      <p class="Graph-Desc">
        {{
          $t(
            '（注）入退院データは山口県から情報が提供されていないため、あくまでも参考値となります'
          )
        }}<br/>
        {{
          $t(
            '（注）都道府県別の患者報告数、入退院の状況については'
          )
        }}
        <a
            href="https://www.mhlw.go.jp/content/10906000/000622034.pdf"
            target="_blank"
            rel="noopener"
          >
            {{ $t('厚生労働省公式サイト') }}
        </a>
        {{
          $t(
            'をご確認ください'
          )
        }}
      </p>
    </template>
    <slot />
  </data-view>
</template>

<i18n src="./SvgCard.i18n.json"></i18n>

<style lang="scss" scoped>
.SvgCard {
  ::v-deep svg {
    width: 100%;
  }
  .Graph-Desc {
    margin-top: 10px;
    margin-bottom: 0;
    font-size: 12px;
    color: $gray-3;
  }
}
</style>

<script>
import DataView from '@/components/DataView.vue'

export default {
  components: { DataView },
  props: {
    title: {
      type: String,
      default: ''
    },
    titleId: {
      type: String,
      default: ''
    },
    date: {
      type: String,
      default: ''
    }
  }
}
</script>
