<template>
  <div class="Parent">
    <page-header class="mb-3">
      {{ $t('臨時休校中の新型コロナウイルス感染症対応についてのお願い') }}
    </page-header>
    <static-card v-show="false">
      <h3>
        <external-link
          url="https://www.kyoiku.metro.tokyo.lg.jp/school/content/learning_support.html"
          :icon-size="24"
          >{{ $t('学びの支援サイト') }}
        </external-link>
      </h3>
      <ul>
        <li>
          {{
            $t(
              '臨時休業期間における子供たちの学びを支援する様々なウェブサイトを紹介しています。'
            )
          }}
        </li>
        <li>
          {{
            $t(
              '学習の基本的な内容を身に付けられる「東京・ベーシック・ドリル」や動画教材等があります。'
            )
          }}
        </li>
      </ul>
    </static-card>
    <static-card>
      <h3>{{ $t('感染予防・健康管理') }}</h3>
      <ul>
        <li>
          {{
            $t(
              '不特定多数の人の集まる場所等への外出を避け、基本的に自宅で過ごしてください。'
            )
          }}
        </li>
        <li>
          {{ $t('手洗い、咳エチケット等により、感染予防に努めてください。')
          }}<br />
          <external-link
            url="https://www.pref.yamaguchi.lg.jp/cmsdata/1/4/2/142f5b06182fae366ce6e7bb2bf3d871.pdf"
            :icon-size="16"
            >{{ $t('【参考】「基本は手洗い。」リーフレット (PDF : 696KB)') }}
          </external-link>
          <br />
          <external-link
            url="https://tokyodouga.jp/lViN9C_BS-0.html"
            :icon-size="16"
          >{{ $t('【参考】感染症予防のための正しい手洗い方法（動画）') }}
          </external-link>
        </li>
        <li>
          {{
            $t(
              '規則正しい生活を心がけ、日常の健康管理に十分気を付けてください。'
            )
          }}
        </li>
      </ul>
    </static-card>
    <static-card>
      <h3>{{ $t('感染症を疑う場合の対応') }}</h3>
      <ul>
        <li>{{ $t('各保健所にご相談ください') }}</li>
        <li>{{ $t('「新型コロナウイルスに関連する各種相談窓口について」（山口県広報広聴課）') }}</li>
        <external-link
          url="https://www.pref.yamaguchi.lg.jp/cms/a11000/sodan/koronasoudan.html"
          :icon-size="16"
        >{{ $t('https://www.pref.yamaguchi.lg.jp/cms/a11000/sodan/koronasoudan.html') }}
        </external-link>
      </ul>
    </static-card>
    <static-card>
      <h3>{{ $t('子育て中の保護者及び子どものための相談窓口について(県こども家庭課)') }}</h3>
      <ul>
        <li>{{ $t('保護者向けチラシ (PDF : 159KB)') }}</li>
        <external-link
          url="https://www.pref.yamaguchi.lg.jp/cmsdata/3/4/a/34a29b5bba282b813897d8b27f6b8f05.pdf"
          :icon-size="16"
        >{{ $t('https://www.pref.yamaguchi.lg.jp/cmsdata/3/4/a/34a29b5bba282b813897d8b27f6b8f05.pdf') }}
        </external-link>

        <li>{{ $t('子ども向けチラシ (PDF : 124KB)') }}</li>
        <external-link
          url="https://www.pref.yamaguchi.lg.jp/cmsdata/b/5/2/b526f18d3ec6407f6398db4216c4a668.pdf"
          :icon-size="16"
        >{{ $t('https://www.pref.yamaguchi.lg.jp/cmsdata/b/5/2/b526f18d3ec6407f6398db4216c4a668.pdf') }}
        </external-link>
      </ul>
    </static-card>
    <static-card>
      <h3>{{ $t('その他') }}</h3>
      <ul>
        <li>{{ $t('県立学校の臨時休業の状況について') }}</li>
        <external-link
          url="https://www.pref.yamaguchi.lg.jp/cms/a50100/korona/korona2020.html"
          :icon-size="16"
        >{{ $t('https://www.pref.yamaguchi.lg.jp/cms/a50100/korona/korona2020.html') }}
        </external-link>

        <li>{{ $t('詳細は、各学校からのお知らせ等をご確認ください。') }}</li>
      </ul>
    </static-card>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { MetaInfo } from 'vue-meta'
import StaticCard from '@/components/StaticCard.vue'
import PageHeader from '@/components/PageHeader.vue'
import ExternalLink from '@/components/ExternalLink.vue'

export default Vue.extend({
  components: {
    PageHeader,
    StaticCard,
    ExternalLink
  },
  head(): MetaInfo {
    return {
      title: this.$t('お子様をお持ちの皆様へ') as string
    }
  }
})
</script>
