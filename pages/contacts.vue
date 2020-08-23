<template>
  <div
    class="Contacts"
    aria-labelledby="pageHeader"
    aria-describedby="contactsCardTable"
  >
    <page-header id="pageHeader" class="mb-3">
      {{ $t('お問い合わせ先・県内保健所一覧') }}
    </page-header>

    <div>
      <h2>
        {{ $t('感染等に関する相談(帰国者・接触者相談センター)') }}
      </h2>
    </div>

    <div class="HealthCenter-Card">
      <table class="HealthCenter-Card-Table">
        <thead>
          <tr>
            <th class="text-center" colspan="2">{{ $t('窓口') }}</th>
            <th class="text-center">{{ $t('連絡先') }}</th>
            <th class="text-center">{{ $t('管内市町村') }}</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td rowspan="9">{{ $t('保健所') }}</td>
            <td class="content text-center">
              {{ $t('岩国健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0827-29-1523">0827-29-1523</a>
            </td>
            <td class="municipality text-center">
              {{ $t('岩国市') }}, {{ $t('和木町') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('柳井健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0820-22-3631">0820-22-3631</a>
            </td>
            <td class="municipality text-center">
              {{ $t('柳井市') }}, {{ $t('周防大島町') }}, {{ $t('上関町') }},
              {{ $t('田布施町') }}, {{ $t('平生町') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('周南健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0834-33-6423">0834-33-6423</a>
            </td>
            <td class="municipality text-center">
              {{ $t('周南市') }}, {{ $t('下松市') }}, {{ $t('光市') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('山口健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:083-934-2533">083-934-2533</a>
            </td>
            <td class="municipality text-center">
              {{ $t('山口市') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('山口健康福祉センター') }}
              {{ $t('防府支所') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0835-22-3740">0835-22-3740</a>
            </td>
            <td class="municipality text-center">
              {{ $t('防府市') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('宇部健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0836-31-3202">0836-31-3202</a>
            </td>
            <td class="municipality text-center">
              {{ $t('宇部市') }}, {{ $t('美祢市') }}, {{ $t('山陽小野田市') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('長門健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0837-22-2811">0837-22-2811</a>
            </td>
            <td class="municipality text-center">
              {{ $t('長門市') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('萩健康福祉センター') }}
            </td>
            <td class="tel text-center">
              <a href="tel:0838-25-2663">0838-25-2663</a>
            </td>
            <td class="municipality text-center">
              {{ $t('萩市') }}, {{ $t('阿武町') }}
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('下関市立下関保健所') }}
            </td>
            <td class="tel text-center">
              <a href="tel:083-231-1530">083-231-1530</a>
            </td>
            <td class="municipality text-center">
              {{ $t('下関市') }}
            </td>
          </tr>

          <tr>
            <td class="content text-center" colspan="2">
              {{ $t('県健康増進課') }}
            </td>
            <td class="tel text-center">
              <a href="tel:083-933-3502">083-933-3502</a>
            </td>
            <td class="municipality text-center">{{ $t('県内') }}</td>
          </tr>

          <tr class="small">
            <td colspan="3">
              <external-link
                url="https://www.pref.yamaguchi.lg.jp/cms/a11000/sodan/koronasoudan.html"
              >
                {{ $t('山口県県公式サイトで確認する') }}
              </external-link>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <br />

    <div>
      <h2>
        {{ $t('厚生労働省電話相談窓口（コールセンター）のご案内') }}
      </h2>
    </div>

    <StaticCard>
      {{
        $t(
          '厚生労働省でも新型コロナウイルスに関する電話相談窓口を開設しています。'
        )
      }}
      <br />
      {{ $t('電話番号') }}
      <a href="tel:0120565653">0120-565-653</a>
      ( {{ $t('フリーダイヤル') }} )
      <br />
      {{ $t('受付時間') }}
      {{ $t('9時00分〜21時00分（土日・祝日も実施）') }}
      <br />
      {{ $t('聴覚に障害のある方をはじめ、電話でのご相談が難しい方') }}
      FAX 03-3595-2756
    </StaticCard>

    <div>
      <h2>
        {{ $t('その他の問い合わせ') }}
      </h2>
    </div>

    <div class="Contacts-Card">
      <table
        id="contactsCardTable"
        class="Contacts-Card-Table"
        v-bind="tableAttrs"
        aria-describedby="pageHeader"
      >
        <thead>
          <tr>
            <th class="text-center">{{ $t('お問い合わせ内容') }}</th>
            <th class="text-center">{{ $t('担当') }}</th>
            <th class="text-center">{{ $t('連絡先') }}</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="content text-center">{{ $t('サイトに関すること') }}</td>
            <td class="bureau text-center">{{ $t('当サイトの管理者') }}</td>
            <td class="tel text-center">
              <a href="mailto:stopcovid19yamaguchi@gmail.com" target="_blank">
                stopcovid19yamaguchi@gmail.com
              </a>
            </td>
          </tr>
          <tr>
            <td class="content text-center">
              {{ $t('県公式サイトに関すること') }}
            </td>
            <td class="bureau tel text-center" colspan="2">
              {{ $t('ページによって連絡先が異なります。') }}
              {{
                $t('公式サイトには、ページ下部に連絡先が掲載されております。')
              }}
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <br />
    <StaticCard>
      {{ $t('このサイトは、山口県が管理しているものではありません。') }}
      {{
        $t(
          'このサイトに関するご意見やご質問などは、県ではなく当サイトの管理者にお寄せください。'
        )
      }}
      <!-- {{ $t('県はこのサイトには一切関与しておりません。') }} -->
    </StaticCard>
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
  data() {
    return {
      pc: true
    }
  },
  computed: {
    tableAttrs(): any {
      return this.pc ? {} : { role: 'presentation' }
    },
    headingAttrs(): any {
      return this.pc ? {} : { role: 'heading', 'aria-level': '3' }
    }
  },
  mounted() {
    if (process.browser) {
      window.addEventListener('resize', this.handleResize)
      this.handleResize()
    }
  },
  destroyed() {
    if (process.browser) {
      window.removeEventListener('resize', this.handleResize)
    }
  },
  methods: {
    handleResize() {
      this.pc = window.innerWidth > 768
    }
  },
  head(): MetaInfo {
    return {
      title: this.$t('お問い合わせ先・県内保健所一覧') as string
    }
  }
})
</script>

<style lang="scss">
.Contacts,
.HealthCenter {
  &-Card {
    @include card-container();

    &-Table {
      width: 100%;
      border-collapse: collapse;

      th {
        padding: 1em 0;
        @include font-size(14, true);
      }

      td {
        padding: 1em 16px;
        @include font-size(14);
      }

      tr.small {
        height: 48px;

        td {
          padding: 8px;
        }
      }

      .importantContact {
        font-weight: bold;
        @include font-size(16, true);
      }

      .tel ul {
        padding: 0;
        list-style: none;
      }

      .tel li {
        margin: 8px 0;
      }

      @include largerThan($medium) {
        th.tel {
          width: 35%;
        }

        th,
        tr:not(:last-child) {
          border-top: none;
          border-right: none;
          border-bottom: thin solid rgba(0, 0, 0, 0.12);
          border-left: none;
        }

        @include largerThan($medium) {
          th.tel {
            width: 35%;
          }

          th,
          tr:not(:last-child) {
            border-top: none;
            border-right: none;
            border-bottom: thin solid rgba(0, 0, 0, 0.12);
            border-left: none;
          }

          tr:last-child {
            border: none;
          }
        }

        @include lessThan($medium) {
          thead {
            display: none;
          }

          tbody {
            tr {
              height: auto;

              &.small {
                height: auto;
              }

              .content {
                padding-top: 12px;
                padding-bottom: 8px;
                font-weight: bold;
                border-bottom: none !important;
              }

              .bureau,
              .municipality {
                border-bottom: none !important;
              }

              .tel {
                padding-bottom: 12px;
              }
            }

            tr:not(:last-child) {
              border-bottom: thin solid rgba(0, 0, 0, 0.12);
            }
          }

          td {
            display: block;
          }
        }

        p.caution {
          margin: 0;
          @include font-size(12);
        }
      }

      p.caution {
        margin: 0;
        @include font-size(12);
      }
    }
  }
}
</style>
