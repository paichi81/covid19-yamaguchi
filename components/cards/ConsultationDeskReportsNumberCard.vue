<template>
  <v-col cols="12" md="6" class="DataCard">
    <time-bar-chart-only-all2
      :title="$t('新型コロナ受診相談窓口相談件数（累計）')"
      :title-id="'number-of-reports-to-covid19-consultation-desk'"
      :chart-id="'time-bar-chart-querents'"
      :chart-data="querentsGraph"
      :date="Querents.last_update"
      :unit="$t('件.reports')"
      :url="
        'https://www.pref.yamaguchi.lg.jp/cms/a15200/kansensyou/ncorona.html'
      "
    />
    <!-- 件.reports = 窓口相談件数 -->
  </v-col>
</template>

<i18n>
{
  "ja": {
	"新型コロナ受診相談窓口相談件数": "新型コロナ受診相談窓口相談件数",
	"累計": "累計",
    "件": {
      "reports": "件"
    }
  }
}
</i18n>

<script>
//import Querents from '@/data/querents.json'
import formatGraph from '@/utils/formatGraph'
import TimeBarChartOnlyAll2 from '@/components/TimeBarChart_only-all2.vue'

export default {
  components: {
    TimeBarChartOnlyAll2
  },
  data() {
	const Querents = this.$store.state.querents.data
    // 帰国者・接触者電話相談センター相談件数
    const querentsGraph = formatGraph(Querents.data)

    const data = {
      Querents,
      querentsGraph
    }
    return data
  }
}
</script>
