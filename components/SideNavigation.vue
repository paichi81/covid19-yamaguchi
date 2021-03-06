<template>
  <div ref="Side" class="SideNavigation" tabindex="-1">
    <header class="SideNavigation-Header">
      <v-icon
        class="SideNavigation-OpenIcon"
        :aria-label="$t('サイドメニュー項目を開く')"
        @click="$emit('openNavi', $event)"
      >
        mdi-menu
      </v-icon>
      <h1 class="SideNavigation-HeaderTitle">
        <nuxt-link :to="localePath('/')" class="SideNavigation-HeaderLink">
          <img
            class="SideNavigation-HeaderLogo"
            src="/logo.png"
            :alt="$t('山口県')"
          />
          <div class="SideNavigation-HeaderText">
            {{ $t('新型コロナウイルス感染症') }}<br />{{
              $t('対策サイト')
            }}
          </div>
        </nuxt-link>
      </h1>
    </header>

    <div :class="['SideNavigation-Body', { '-opened': isNaviOpen }]">
      <v-icon
        class="SideNavigation-CloseIcon"
        :aria-label="$t('サイドメニュー項目を閉じる')"
        @click="$emit('closeNavi', $event)"
      >
        mdi-close
      </v-icon>

      <nav class="SideNavigation-Menu">
        <div class="SideNavigation-Language">
          <div
            v-if="this.$i18n.locales.length > 1"
            class="SideNavigation-Language"
          >
            <label class="SideNavigation-LanguageLabel" for="LanguageSelector">
              {{ $t('多言語対応選択メニュー') }}
            </label>
            <language-selector />
          </div>
        </div>
        <menu-list :items="items" @click="$emit('closeNavi', $event)" />
      </nav>
      <br />
      <h3>{{ $t('※当サイトは山口県内外の有志が開設したものです。') }}</h3>

      <footer class="SideNavigation-Footer">
        <div class="SideNavigation-Social">
<!--          <a-->
<!--            href="https://line.me/R/ti/p/%40822sysfc"-->
<!--            target="_blank"-->
<!--            rel="noopener noreferrer"-->
<!--            class="SideNavigation-SocialLink"-->
<!--          >-->
<!--            <picture>-->
<!--              <source srcset="/line.webp" type="image/webp" />-->
<!--              <img src="/line.png" alt="LINE" />-->
<!--            </picture>-->
<!--          </a>-->
<!--          <a-->
<!--            href="https://twitter.com/tokyo_bousai"-->
<!--            target="_blank"-->
<!--            rel="noopener noreferrer"-->
<!--            class="SideNavigation-SocialLink"-->
<!--          >-->
<!--            <picture>-->
<!--              <source srcset="/twitter.webp" type="image/webp" />-->
<!--              <img src="/twitter.png" alt="Twitter" />-->
<!--            </picture>-->
<!--          </a>-->
<!--          <a-->
<!--            href="https://www.facebook.com/tochokoho"-->
<!--            target="_blank"-->
<!--            rel="noopener noreferrer"-->
<!--            class="SideNavigation-SocialLink"-->
<!--          >-->
<!--            <picture>-->
<!--              <source srcset="/facebook.webp" type="image/webp" />-->
<!--              <img src="/facebook.png" alt="Facebook" />-->
<!--            </picture>-->
<!--          </a>-->
<!--          <a-->
<!--            href="https://github.com/tokyo-metropolitan-gov/covid19"-->
<!--            target="_blank"-->
<!--            rel="noopener noreferrer"-->
<!--            class="SideNavigation-SocialLink"-->
<!--          >-->
<!--            <picture>-->
<!--              <source srcset="/github.webp" type="image/webp" />-->
<!--              <img src="/github.png" alt="GitHub" />-->
<!--            </picture>-->
<!--          </a>-->
<!--          <a-->
<!--            href="https://www.youtube.com/user/tokyo/videos"-->
<!--            target="_blank"-->
<!--            rel="noopener noreferrer"-->
<!--            class="SideNavigation-SocialLink"-->
<!--          >-->
<!--            <picture>-->
<!--              <source srcset="/youtube.webp" type="image/webp" />-->
<!--              <img src="/youtube.png" alt="YouTube" />-->
<!--            </picture>-->
<!--          </a>-->

          <a
            href="https://www.facebook.com/stopcovid19yamaguchi/"
            target="_blank"
            rel="noopener"
          >
            <img src="/facebook.png" alt="Facebook" width="30px" />
          </a>
          <a
            href="https://github.com/nishidayoshikatsu/covid19-yamaguchi"
            target="_blank"
            rel="noopener"
          >
            <img src="/github.png" alt="GitHub" width="30px" />
          </a>
        </div>

        <div class="SideNavigation-SponsorLinkContainer">
          <br />
          Powered by:<br />
          <a href="https://www.sakura.ad.jp/" target="_blank" rel="noopener">
            <!-- <span class="image-title">{{$t('さくらインターネット')}}</span> -->
            <img
              class="sakura-internet-logo"
              src="/sakura.svg"
              width="176px"
              height="62px"
              alt="さくらインターネット"
            />
          </a>
        </div>

        <small class="SideNavigation-Copyright">
          {{ $t('このサイトの内容物は') }}
          <a
            :href="$t('https://creativecommons.org/licenses/by/4.0/deed.ja')"
            target="_blank"
            rel="license"
            class="SideNavigation-LicenseLink"
          >
            {{ $t('クリエイティブ・コモンズ 表示 4.0 ライセンス') }}
          </a>
          {{ $t('の下に提供されています。') }}
          <br />
          &copy; 2020 yamaguchi.stopcovid19.jp
        </small>
      </footer>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { TranslateResult } from 'vue-i18n'
import LanguageSelector from '@/components/LanguageSelector.vue'
import MenuList from '@/components/MenuList.vue'

type Item = {
  icon?: string
  title: TranslateResult
  link: string
  divider?: boolean
}

export default Vue.extend({
  components: {
    LanguageSelector,
    MenuList
  },
  props: {
    isNaviOpen: {
      type: Boolean,
      required: true
    }
  },
  computed: {
    items(): Item[] {
      return [
        {
          icon: 'mdi-chart-timeline-variant',
          title: this.$t('山口県内の最新感染動向'),
          link: this.localePath('/')
        },
        {
          icon: 'CovidIcon',
          title: this.$t('新型コロナウイルス感染症が心配なときに'),
          link: this.localePath('/flow'),
          divider: true
        },
        {
          title: this.$t('新型コロナウイルス感染症　関連情報'),
          link:
            'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202004240002.html'
        },
        {
          title: this.$t('新型コロナウイルスに関連する相談窓口'),
          link:
            'https://www.pref.yamaguchi.lg.jp/cms/a11000/sodan/koronasoudan.html',
          divider: true
        },
        //
        // {
        //   icon: 'CovidIcon',
        //   title: this.$t('新型コロナウイルスの感染が判明した方へ'),
        //   link:
        //     'https://www.fukushihoken.metro.tokyo.lg.jp/oshirase/corona_0401.html'
        // },
        // {
        //   icon: 'MaskTrashIcon',
        //   title: this.$t('ご家庭でのマスク等の捨て方'),
        //   link:
        //     'https://www.kankyo.metro.tokyo.lg.jp/resource/500200a20200221162304660.files/200327_chirashi.pdf',
        //   divider: true
        // },
        {
          icon: 'mdi-account-multiple',
          title: this.$t('山口県民の皆様へ'),
          link: 'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202005280002.html#1'

        },
        {
          icon: 'ParentIcon',
          title: this.$t('お子様をお持ちの皆様へ'),
          link: this.localePath('/parent')
        },
        {
          icon: 'mdi-domain',
          title: this.$t('企業の皆様・はたらく皆様へ'),
          link: 'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202005280003.html#1',
        },
        {
          title: this.$t('医療機関の皆さまへ'),
          link: 'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202005280005.html#1',
        },
        {
          title: this.$t('山口県の対策'),
          link: 'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202005280006.html#1',
        },
        {
          title: this.$t('県内各市町の対策'),
          link: 'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202005280007.html#1',
          divider: true
        },
        // {
        //   title: this.$t('東京都新型コロナウイルス感染症対策本部報'),
        //   link:
        //     'https://www.bousai.metro.tokyo.lg.jp/taisaku/saigai/1007261/index.html'
        // },
        // {
        //   title: this.$t('東京都 新型コロナウイルス感染症 支援情報ナビ'),
        //   link: 'https://covid19.supportnavi.metro.tokyo.lg.jp/'
        // },
        //{
        //  title: this.$t('東京都主催等 中止又は延期するイベント等'),
        //  link:
        //    'https://www.pref.yamaguchi.lg.jp/cms/a15200/kansensyou/202002250001.html'
        //},
        // {
        //   title: this.$t('東京都における滞在人口の増減'),
        //   link:
        //     'https://www.seisakukikaku.metro.tokyo.lg.jp/information/corona-people-flow-analysis.html'
        // },
        //{
        //  title: this.$t(
        //    '新型コロナウイルス発生に伴う県有施設等の休館等について'
        //  ),
        //  link:
        //    'https://www.pref.yamaguchi.lg.jp/cms/a15200/kansensyou/202002280001.html'
        //},
        {
          title: this.$t('知事からのメッセージ'),
          link:
            'https://www.pref.yamaguchi.lg.jp/cms/a10000/korona2020/202004240001.html#3'
        },
        {
          title: this.$t('当サイトについて'),
          link: this.localePath('/about'),
          divider: true
        },
        // {
        //   title: this.$t('お問い合わせ先一覧'),
        //   link: this.localePath('/contacts')
        // },
        {
          title: this.$t('山口県公式ホームページ'),
          link: 'https://www.pref.yamaguchi.lg.jp/'
        },
        {
          title: this.$t('山口県感染症情報センターホームページ'),
          link: 'http://kanpoken.pref.yamaguchi.lg.jp/jyoho/page5-7/page5-7-31.html'
        },
        {
          title: this.$t('山口県新型コロナウイルス感染症対策本部 公式LINE'),
          link: 'https://lin.ee/x22fTp5',
        },
        {
          title: this.$t('山口県新型コロナウイルス感染症対策本部 公式twitter'),
          link: 'https://twitter.com/CoronaYamaguchi',
        },
        {
          title: this.$t('山口県オープンデータカタログサイト'),
          link: 'https://yamaguchi-opendata.jp/ckan/dataset/350001-covid19',
          //divider: true
        }
      ]
    }
  },
  watch: {
    $route: 'handleChageRoute'
  },
  methods: {
    handleChageRoute() {
      // nuxt-link で遷移するとフォーカスが残り続けるので $route を監視して SideNavigation にフォーカスする
      return this.$nextTick().then(() => {
        const $Side = this.$refs.Side as HTMLEmbedElement | undefined
        if ($Side) {
          $Side.focus()
        }
      })
    }
  }
})
</script>

<style lang="scss" scoped>
.SideNavigation {
  position: relative;
  @include lessThan($small) {
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.15);
  }
  &:focus {
    outline: 1px dotted $gray-3;
  }
}

.SideNavigation-Header {
  height: 64px;
  padding-left: 48px;
  @include largerThan($small) {
    height: auto;
    padding: 14px;
  }
  @include lessThan($small) {
    display: flex;
  }
  @include lessThan($tiny) {
    padding-left: 40px;
  }
}

.SideNavigation-OpenIcon {
  position: absolute;
  top: 0;
  left: 0;
  padding: 18px 8px 18px 16px;
  font-size: 28px;
  @include lessThan($tiny) {
    font-size: 24px;
    padding: 20px 10px;
  }
  @include largerThan($small) {
    display: none;
  }
}

.SideNavigation-CloseIcon {
  position: absolute;
  top: 0;
  left: 0;
  padding: 18px 8px 18px 16px;
  font-size: 28px;
  @include lessThan($tiny) {
    font-size: 24px;
    padding: 20px 10px;
  }
  @include largerThan($small) {
    display: none;
  }
}

.SideNavigation-HeaderTitle {
  width: 100%;
  color: #707070;
  @include font-size(13);
  @include largerThan($small) {
    margin: 0;
    margin-top: 10px;
  }
}

.SideNavigation-HeaderLink {
  display: flex;
  align-items: center;
  padding-right: 10px;
  @include lessThan($small) {
    height: 64px;
  }
  @include lessThan($tiny) {
    justify-content: space-between;
  }
  &:link,
  &:hover,
  &:focus,
  &:visited,
  &:active {
    color: inherit;
    text-decoration: none;
  }

  &:hover,
  &:focus {
    font-weight: bold;
  }

  &:focus {
    outline: dotted $gray-3 1px;
  }

  @include largerThan($small) {
    display: block;
    padding: 15px 0;
  }
}

.SideNavigation-HeaderLogo {
  width: 110px;
  @include lessThan($tiny) {
    width: 110px;
  }
}

.SideNavigation-HeaderText {
  margin: 8px 0 0 0;
  @include lessThan($small) {
    margin: 0 0 0 8px;
  }

  @include lessThan($tiny) {
    margin: 0;
  }
}

.SideNavigation-Body {
  padding: 0 20px 20px;
  @include lessThan($small) {
    display: none;
    padding: 0 36px 36px;
    &.-opened {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      display: block !important;
      width: 100%;
      z-index: z-index-of(opened-side-navigation);
      background-color: $white;
      height: 100%;
      overflow: auto;
      -webkit-overflow-scrolling: touch;
    }
  }
}

.SideNavigation-Menu {
  @include lessThan($small) {
    padding-top: 50px;
  }
}

.SideNavigation-LanguageLabel {
  display: block;
  margin-bottom: 5px;
  @include font-size(14);
}

.SideNavigation-Footer {
  padding-top: 20px;
}

.SideNavigation-Social {
  display: flex;
  a {
    margin: 5px;
  }
}

.SideNavigation-SocialLink {
  border: 1px dotted transparent;
  border-radius: 30px;
  color: $gray-3;

  &:link,
  &:hover,
  &:visited,
  &:active {
    color: inherit;
    text-decoration: none;
  }

  &:focus {
    color: inherit;
    text-decoration: none;
    border: 1px dotted $gray-3;
    outline: none;
  }

  & + & {
    margin-left: 10px;
  }

  img {
    width: 30px;
  }
}

.SideNavigation-Copyright {
  display: block;
  margin-top: 15px;
  color: $gray-1;
  line-height: 1.3;
  font-weight: bold;
  @include font-size(8);
}

.SideNavigation-LicenseLink {
  &:focus {
    outline: 1px dotted $gray-3;
  }
}
</style>
