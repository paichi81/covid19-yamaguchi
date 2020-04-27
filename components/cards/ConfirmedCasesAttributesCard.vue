<template>
  <v-col cols="12" md="6" class="DataCard">
    <data-table
      :title="$t('陽性患者の属性')"
      :title-id="'attributes-of-confirmed-cases'"
      :chart-data="patientsTable"
      :chart-option="{}"
      :date="Patients.last_update"
      :info="sumInfoOfPatients"
      :url="
        'https://www.pref.yamaguchi.lg.jp/cms/a15200/kansensyou/koronahassei.html'
      "
    />
  </v-col>
</template>

<i18n>
{
  "ja": {
    "陽性患者の属性": "陽性患者の属性",
    "{date}の累計": "{date}の累計",
    "人": "人",
    "公表日": "公表日",
    "居住地": "居住地",
    "年代": "年代",
    "性別": "性別",
    "{age}代": "{age}代",
    "男性": "男性",
    "女性": "女性"
  }
}
</i18n>

<script>
//import Patients from '@/data/patients.json'
//import PatientsCnt from '@/data/patients_cnt.json'
import formatGraph from '@/utils/formatGraph'
import formatTable from '@/utils/formatTable'
import DataTable from '@/components/DataTable.vue'

export default {
  components: {
    DataTable
  },
  data() {
	const PatientsCnt = this.$store.state.data.patientscnt
	const Patients = this.$store.state.data.patients

    // 感染者数グラフ
    const patientsGraph = formatGraph(PatientsCnt.data)
    // 感染者数
    const patientsTable = formatTable(Patients.data)

    const sumInfoOfPatients = {
      lText: patientsGraph[
        patientsGraph.length - 1
      ].cumulative.toLocaleString(),
      sText: this.$t('{date}の累計', {
        date: patientsGraph[patientsGraph.length - 1].label
      }),
      unit: this.$t('人')
    }
	
    // 陽性患者の属性 ヘッダー翻訳
    for (const header of patientsTable.headers) {
      header.text = header.value
    }
    // 陽性患者の属性 中身の翻訳
    for (const row of patientsTable.datasets) {
      row['居住地'] = this.$t(row['居住地'])
	  row['性別'] = this.$t(row['性別'])
	  row['年代'] = this.$t(row['年代'])
	  row['No'] = this.$t(row['No']) + "例"
	  //row['備考'] = this.$t(row['備考'])

      /*if (row['年代'] === '10歳未満') {
        row['年代'] = this.$t('10歳未満')
      } else if (row['年代'] === '小学生') {
		row['年代'] = this.$t('小学生')
	  } else if (row['年代'] === '不明') {
        row['年代'] = this.$t('不明')
      } else {
        const age = row['年代'].substring(0, 2)
        row['年代'] = this.$t('{age}代', { age })
      }*/
    }

    const data = {
	  Patients,
	  //PatientsCnt,
      patientsTable,
      sumInfoOfPatients
    }
    return data
  }
}
</script>
