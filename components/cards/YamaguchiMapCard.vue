<template>
  <v-col cols="12" md="6" class="DataCard">
    <svg-card
		:title="$t('山口県内感染者発生状況')"
		:title-id="'map-in-yamaguchi'"
		:date="'2020/05/09 10:11'"
		:url="'https://yamaguchi-opendata.jp/ckan/dataset/350001-covid19'"
	>
		<div class="mapImage">
			<img
				:src="$t('https://nishidayoshikatsu.github.io/covid19-yamaguchi-opendata/yamaguchi-map.png')"
				alt=""
			/>
		</div>
    </svg-card>
  </v-col>
</template>

<script>
import SvgCard from '@/components/SvgCard.vue'

export default {
	components: {
		SvgCard
	}
}
</script>
<style lang="scss">
.mapImage {
  img {
    width: 96%;
    @include lessThan(959) {
      width: 100%;
    }
  }
}
</style>