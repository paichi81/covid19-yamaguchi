<template>
  <v-col cols="12" md="6" class="DataCard">
    <time-bar-chart-only-all
      :title="$t('PCR検査実施件数（累計）')"
      :title-id="'number-of-tested'"
      :chart-id="'time-stacked-bar-chart-inspections'"
      :chart-data="inspectionsGraph"
      :date="Inspections.last_update"
      :unit="$t('件.tested')"
      :url="
        'https://www.pref.yamaguchi.lg.jp/cms/a15200/kansensyou/ncorona.html'
      "
    />
    <!-- 件.tested = 検査数 -->
  </v-col>
</template>

<i18n>
{
  "ja": {
	"検査実施件数": "検査実施件数",
	"累計": "累計",
    "件": {
      "tested": "件"
    }
  }
}
</i18n>

<script>
//import Inspections from '@/data/inspections.json'
import formatGraph from '@/utils/formatGraph'
import TimeBarChartOnlyAll from '@/components/TimeBarChart_only-all.vue'

export default {
  components: {
    TimeBarChartOnlyAll
  },
  data() {
	const Inspections = this.$store.state.data.inspections
    // 検査数グラフ
    const inspectionsGraph = formatGraph(Inspections.data)

    const data = {
      Inspections,
      inspectionsGraph
    }
    return data
  }
}
</script>
