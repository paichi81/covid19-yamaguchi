<template>
  <v-col cols="12" md="6" class="DataCard">
    <time-bar-chart-only-all2
      :title="$t('新型コロナ受診相談窓口相談件数（累計）')"
      :title-id="'number-of-reports-to-covid19-consultation-desk'"
      :chart-id="'time-bar-chart-querents'"
      :chart-data="querentsGraph"
      :date="Data.querents.date"
      :unit="$t('件.reports')"
      :url="'https://yamaguchi-opendata.jp/ckan/dataset/350001-covid19'"
    />
    <!-- 件.reports = 窓口相談件数 -->
  </v-col>
</template>

<script>
import Data from '@/data/data.json'
import formatGraph from '@/utils/formatGraph'
import TimeBarChartOnlyAll2 from '@/components/TimeBarChart_only-all2.vue'

export default {
  components: {
    TimeBarChartOnlyAll2
  },
  data() {
    // 帰国者・接触者 電話相談センター 相談件数
    const querentsGraph = formatGraph(Data.querents.data)

    const data = {
      Data,
      querentsGraph
    }
    return data
  }
}
</script>
